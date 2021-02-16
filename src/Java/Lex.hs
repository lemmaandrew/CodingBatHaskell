{-
The lexing module for the program
Transforms Java code into lists of Tokens
-}

module Java.Lex
    ( JavaToken (..)
    , javaModifiers
    , Parser (..)
    , unsafeLexTokens
    , lexToken
    , lexeme
    , symbol
    , integer
    , signed
    , float
    , identifier
    ) where


import Data.Functor ( ($>) )
import qualified Data.Set as Set
import Data.Void ( Void )
import System.Environment ( getArgs )
import Text.Megaparsec
import Text.Megaparsec.Char
import qualified Text.Megaparsec.Char.Lexer as L


type Parser = Parsec Void String

-- | Token parsed from Java code  
-- Called @JavaToken@ to not mix names with Megaparsec's @Token@
data JavaToken =
      INT Integer   -- Integer literal
    | DOUBLE Double -- Double literal
    | STRING String -- String literal
    | ID String     -- names for variables, types, and the like
    | LPAREN        -- (
    | RPAREN        -- )
    | LBRACKET      -- [
    | RBRACKET      -- ]
    | LBRACE        -- {
    | RBRACE        -- }
    | LCARROT       -- <
    | RCARROT       -- >
    | COMMA         -- ,
    | COLON         -- :
    | SEMICOLON     -- ;
    | PUBLIC        -- public modifier
    | PRIVATE       -- private modifier
    | PROTECTED     -- protected modifier
    | STATIC        -- static modifier
    | FINAL         -- final modifier
    | ABSTRACT      -- abstract modifier
    | TRANSIENT     -- transient modifier
    | SYNCHRONIZED  -- synchronized modifier
    | VOLATILE      -- volatile modifier
    deriving (Eq, Ord, Show)
----------------- ^ Ord only needed for Parsec

javaModifiers :: Set.Set JavaToken
javaModifiers = Set.fromList
    [ PUBLIC
    , PRIVATE
    , PROTECTED
    , STATIC
    , FINAL
    , ABSTRACT
    , TRANSIENT
    , SYNCHRONIZED
    , VOLATILE
    ]

-- | The main function of Java.Lex  
-- If @toEOF@ is @True@, forces lexing to the end of @str@,
-- otherwise lexes as much as it can
unsafeLexTokens :: Bool -> String -> [JavaToken]
unsafeLexTokens toEOF str =
    case parse (many lexToken) "" str of
        Left err  -> error (show err)
        Right res -> res

lexToken :: Parser JavaToken
lexToken = choice $ map (try . lexeme)
    [ DOUBLE <$> float
    , INT <$> signed
    , STRING <$> between (char '"') (char '"') (many (anySingleBut '"' :: Parser Char))
    , PUBLIC <$ string "public"
    , PRIVATE <$ string "private"
    , PROTECTED <$ string "protected"
    , STATIC <$ string "static"
    , FINAL <$ string "final"
    , ABSTRACT <$ string "abstract"
    , TRANSIENT <$ string "transient"
    , SYNCHRONIZED <$ string "synchronized"
    , VOLATILE <$ string "volatile"
    , ID <$> identifier
    , LPAREN <$ char '('
    , RPAREN <$ char ')'
    , LBRACKET <$ char '['
    , RBRACKET <$ char ']'
    , LBRACE <$ char '{'
    , RBRACE <$ char '}'
    , LCARROT <$ char '<'
    , RCARROT <$ char '>'
    , COMMA <$ char ','
    , COLON <$ char ':'
    , SEMICOLON <$ char ';'
    ]

lexeme :: Parser a -> Parser a
lexeme = L.lexeme space

symbol :: String -> Parser String
symbol = L.symbol space

integer :: Num a => Parser a
integer = lexeme L.decimal

-- making our own signed lexer because "+integer" isn't a real grammar >:(
signed :: Num a => Parser a
signed = lexeme $ do
    sign <- option 1 (char '-' $> (-1))
    num <- integer
    return $ sign * num

-- making our own float lexer because L.float doesn't do signs???
float :: Parser Double
float = lexeme $ do
    sign <- option 1 (char '-' $> (-1))
    num <- L.float
    return $ sign * num

-- | A valid Java identifier
identifier :: Parser String
identifier = do
    firstChar <- letterChar <|> char '_' <|> char '$'
    restOfStr <- many (alphaNumChar <|> char '_')
    return $ firstChar : restOfStr


main :: IO ()
main = do
    str <- head <$> getArgs
    mapM_ print $ unsafeLexTokens True str
