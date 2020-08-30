{-# LANGUAGE LambdaCase #-}

module Src.JavaParser where

-- this is only meant to be good enough for codingbat.com
-- so I don't deal with `<?>` types or `super` or `extends`
import Data.Char
import Data.List (intercalate)
import Text.ParserCombinators.ReadP
import Text.Printf

type Identifier = String

data DataType = Type String | Container Identifier [DataType] deriving (Eq,Show)

typeToHaskell :: DataType -> String
typeToHaskell (Type t)
    | null t = "()"
    | (x:xs) <- t = case (toUpper x) : xs of
        "Void" -> "IO ()"
        str    -> str

containerToHaskell :: DataType -> String
containerToHaskell (Container name dts)
    | map toLower name == "list" || map toLower name == "array" = '[' : dtToHaskell (head dts) ++ "]"
    | name == "Map" = unwords ("Map.Map" : map parenthesize dts)
    | otherwise = unwords (name : map parenthesize dts)
    where
        parenthesize t@(Type _) = dtToHaskell t
        parenthesize c@(Container _ _) = '(' : dtToHaskell c ++ ")"

dtToHaskell :: DataType -> String
dtToHaskell t@(Type _) = typeToHaskell t
dtToHaskell c@(Container _ _) = containerToHaskell c

-- Java DataType parsing

javaIdentifier :: ReadP Identifier
javaIdentifier = do
    initialChar <- satisfy (\x -> isAlpha x || x `elem` "$_")
    -- doesn't satisfy unicode chars
    restOfIdentifier <- many (satisfy (\x -> isAlphaNum x || x `elem` "$_"))
    return $ initialChar : restOfIdentifier

parseJavaType :: ReadP DataType
parseJavaType = Type <$> javaIdentifier

parseJavaArr :: ReadP DataType
parseJavaArr = do
    identifier <- javaIdentifier
    string "[]"
    return $ Container "Array" [Type identifier]

commaSeparator :: ReadP ()
commaSeparator = char ',' >> skipSpaces

parseJavaContainer :: ReadP DataType
parseJavaContainer = do
    identifier <- javaIdentifier
    char '<'
    dts <- sepBy1 parseJavaDT commaSeparator
    char '>'
    return $ Container identifier dts

parseJavaDT :: ReadP DataType
parseJavaDT = choice [parseJavaContainer, parseJavaArr, parseJavaType]

javaToDataType :: String -> DataType
javaToDataType = fst <$> last <$> readP_to_S parseJavaDT


-- Java method parsing
-- Doesn't account for ? types and `extends` types
data JavaMethod = JavaMethod
    { name :: Identifier
    , returnType :: DataType
    , args :: [(DataType, Identifier)]
    , modifiers :: [String]
    } deriving (Eq,Show)

-- Think of a better name for this
javaMToHaskellF :: String -> String
javaMToHaskellF = javaMethodToHaskell . javaToJavaMethod

javaToJavaMethod :: String -> JavaMethod
javaToJavaMethod = fst <$> head <$> readP_to_S parseJavaMethod

javaMethodToHaskell :: JavaMethod -> String
javaMethodToHaskell jm = printf "%s :: %s\n%s %s = undefined"
                                (name jm)
                                (intercalate " -> " $ (map (dtToHaskell . fst) $ args jm) ++ [dtToHaskell $ returnType jm])
                                (name jm)
                                (unwords $ map snd $ args jm)


parseJavaMethod :: ReadP JavaMethod
parseJavaMethod = do
    modifiers <- parseModifiers
    skipSpaces
    returnType <- parseJavaDT
    skipSpaces
    name <- javaIdentifier
    args <- between (char '(') (char ')') parseArgs
    --char '('
    --args <- parseArgs
    --char ')'
    return $ JavaMethod name returnType args modifiers 

parseModifiers :: ReadP [String]
parseModifiers = sepBy (choice modifiers) (skipSpaces) where
    modifiers = map string [ "public"
                           , "private"
                           , "protected"
                           , "static"
                           , "final"
                           , "abstract"
                           , "transient"
                           , "synchronized"
                           , "volatile"]

parseArgs :: ReadP [(DataType, Identifier)]
parseArgs = sepBy parse' commaSeparator where
    parse' = do
        dt <- parseJavaDT
        skipSpaces
        ident <- javaIdentifier
        return (dt, ident)

-- method calls
-- a lot simpler to parse because we only have to do minimal interpretation of the data
data MethodCall = MethodCall Identifier [String] deriving (Eq,Show)

javaToMethodCall :: String -> MethodCall
javaToMethodCall = fst . head . readP_to_S parseMethodCall

methodCallToHaskell :: MethodCall -> String
methodCallToHaskell (MethodCall name args)
    | null args = name
    | otherwise  = name ++ " " ++ unwords args 

parseMethodCall :: ReadP MethodCall
parseMethodCall = do
    name <- javaIdentifier
    args <- between (char '(') (char ')') (sepBy (parseLiteral +++ javaIdentifier) commaSeparator)
    return $ MethodCall name args

-- the following parse_type_ functions are to prevent literals like
-- "hello\":" or ["hi,", "there"] from messing up the parser
-- they do minimal interpret the string fed

parseLiteral :: ReadP String
parseLiteral = choice [parseNum, parseString, parseChar, parseList, parseMap]

-- hard one: have to convert to fromList [(key,value)]
parseMap :: ReadP String
parseMap = do
    char '{'
    pairs <- sepBy parser' commaSeparator
    char '}'
    return $ "fromList [" ++ intercalate ", " pairs ++ "]"
    where
        parser' = do
            key <- parseLiteral
            char ':' >> skipSpaces
            value <- parseLiteral
            return $ printf "(%s, %s)" key value

parseString :: ReadP String
parseString = do
    contents <- between (char '"') (char '"') (many (satisfy (const True)))
    return $ '"' : contents ++ "\"" -- we want the delimiting quotes bc it's a string literal

parseChar :: ReadP String
parseChar = between (char '\'') (char '\'') get >>= (\c -> return ['\'',c,'\''])

parseList :: ReadP String
parseList = do
    contents <- between (char '[') (char ']') (many (satisfy (const True)))
    return $ '[' : contents ++ "]"

-- slight interpretation here
-- we need to put parens around a negative number
parseNum :: ReadP String
parseNum = do
    sign <- option '+' (satisfy (== '-'))
    -- not clear what the difference between many1 and munch1 would be here
    -- but I feel more comfortable with munch1
    intPart <- munch1 isDigit
    optional (char '.')
    decPart <- munch isDigit
    e' <- option Nothing (Just <$> char 'e' +++ char 'E')
    exponentPart <- munch isDigit
    case decPart of
        -- duplicate code here is an oof
        "" -> case e' of
            Nothing -> parenSign sign intPart
            Just c  -> parenSign sign $ intPart ++ [c] ++ exponentPart
        xs -> case e' of
            Nothing -> parenSign sign $ intPart ++ "." ++ decPart
            Just c  -> parenSign sign $ concat [intPart, ".", decPart, [c], exponentPart]
    where
        parenSign sign xs = case sign of
            '+' -> return xs
            '-' -> return $ "(-" ++ xs ++ ")"
