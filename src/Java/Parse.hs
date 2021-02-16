{-| Parses lexed statements and expressions

Only works to process things that will appear in Codingbat, i.e.:
    - function declarations (this is the main thing)
    - function calls
    - primitive literals (i.e., int, double, string)
    - array/list literals
    - map literals
    - variable declarations within function declarations
    - types
    - function modifiers (e.g., "private", "public", "static")
-}

module Java.Parse
    ( TokenParser
    , DataType (..)
    , pDataType
    , Literal (..)
    , pLiteral
    , FuncDecl (..)
    , pFuncDecl
    , FuncCall (..)
    , pFuncCall
    , JavaString
    , parseJava
    ) where

import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import Data.Void ( Void )
import Java.Lex ( javaModifiers, lexToken, JavaToken(..) )
import System.Environment ( getArgs )
import Text.Megaparsec
    ( (<|>),
      Parsec,
      anySingle,
      parse,
      single,
      between,
      choice,
      option,
      many,
      sepBy,
      sepBy1,
      MonadParsec(eof, takeWhileP, try) )


type TokenParser = Parsec Void [JavaToken]
type TypeName = String


data DataType =
      SingleType TypeName
    | ParamedType TypeName [DataType] -- A type like List<type>, Map<type1, type2>, type[], or type[][]
    deriving (Eq, Show)


pDataType :: TokenParser DataType
pDataType = choice [try pCarrotType, try pArray, pSingleType]

pSingleType :: TokenParser DataType
pSingleType = do
    ID name <- anySingle
    return $ SingleType name

pArray :: TokenParser DataType
pArray = do
    dtype <- pSingleType
    brackets
    go (ParamedType "List" [dtype])
    where
        go container =  try (brackets >> go (ParamedType "List" [container]))
                    <|> return container
        brackets = single LBRACKET >> single RBRACKET

-- | Parses types with carrots like List<type> or Map<type1, type2>
pCarrotType :: TokenParser DataType
pCarrotType = do
    ID name <- anySingle
    single LCARROT
    types <- sepBy1 pDataType (single COMMA)
    single RCARROT
    return $ ParamedType name types


data Literal =
      LitInteger Integer
    | LitDouble Double
    | LitString String
    | LitBool Bool
    | LitList [Literal] -- covers both arrays and ArrayLists
    | LitMap (Map.Map Literal Literal)
    deriving (Eq, Ord, Show)

pLiteral :: TokenParser Literal
pLiteral = choice
    [ try pLitInteger
    , try pLitDouble
    , try pLitString
    , try pLitBool
    , try pLitList
    , try pLitMap
    ]

pLitInteger, pLitDouble, pLitString :: TokenParser Literal
pLitInteger = do
    INT x <- anySingle
    return $ LitInteger x

pLitDouble = do
    DOUBLE x <- anySingle
    return $ LitDouble x

pLitString = do
    STRING s <- anySingle
    return $ LitString s

pLitBool :: TokenParser Literal
pLitBool = do
    ID boolean <- anySingle
    return $ LitBool $ case boolean of
        "true"  -> True
        "false" -> False

-- Doesn't account for type strictness rules
pLitList :: TokenParser Literal
pLitList = LitList
        <$> between (single LBRACKET)
                    (single RBRACKET)
                    (sepBy pLiteral (single COMMA))

-- Doesn't account for type strictness rules
pLitMap :: TokenParser Literal
pLitMap = do
    values <- between (single LBRACE)
                      (single RBRACE)
                      (sepBy getVal (single COMMA))
    return $ LitMap $ Map.fromList values
    where
        getVal = do
            key <- pLiteral
            single COLON
            val <- pLiteral
            return (key, val)


-- | A function declaration
data FuncDecl = FuncDecl
    { fdModifiers  :: [JavaToken]
    , fdReturnType :: DataType
    , fdName       :: String
    , fdParams     :: [(DataType, String)]
    } deriving (Eq, Show)


pFuncDecl :: TokenParser FuncDecl
pFuncDecl = FuncDecl
            <$> pMods
            <*> pReturnType
            <*> pName
            <*> between (single LPAREN) (single RPAREN) (option [] (try pParams))
    where
        pMods = takeWhileP Nothing (`Set.member` javaModifiers)
        
        pReturnType = pDataType

        pName = do
            ID name <- anySingle
            return name
        
        pParams = flip sepBy (single COMMA) $ do
                dtype <- pDataType
                ID name <- anySingle
                return (dtype, name)


data FuncCall = FuncCall
    { fcName   :: String
    , fcParams :: [Literal]
    } deriving (Eq, Show)

pFuncCall :: TokenParser FuncCall
pFuncCall = FuncCall
            <$> pName
            <*> between (single LPAREN) (single RPAREN) (sepBy pLiteral (single COMMA))
    where
        pName = do
            ID name <- anySingle
            return name


type JavaString = String

-- | Parses a string directly into a Java.Parse data object
parseJava :: TokenParser a -> JavaString -> a
parseJava p s = case parse (many lexToken <* eof) "" s of
    Left err  -> error $ show err
    Right res -> case parse p "" res of
        Left err'  -> error $ show err'
        Right res' -> res'


main :: IO ()
main = do
    (process : arg : _) <- getArgs
    case process of
        "dt"       -> print $ parseJava pDataType arg
        "lit"      -> print $ parseJava pLiteral arg
        "funcDecl" -> print $ parseJava pFuncDecl arg
        "funcCall" -> print $ parseJava pFuncCall arg
