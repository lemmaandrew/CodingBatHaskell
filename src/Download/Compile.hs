-- A simple module just for converting a problem into a string

module Download.Compile
    ( compileProblem
    , getAndCompileProblem
    ) where


import Data.Char ( isSpace )
import Data.List ( groupBy, isInfixOf )
import Download.Scrape
    ( Problem(probID, probDesc, probTests, probMethod), getProblem )
import Java.Parse ( FuncDecl(fdName) )
import Java.Transpile
    ( funcDeclToHaskell, literalToHaskell, funcCallToHaskell )
import Text.Printf ( printf )


compileProblem :: Problem -> (String, String)
compileProblem pbm = (fdName $ probMethod pbm, compiledStr)
    where
        formatString = "{- From https://codingbat.com/prob/%s\n\
\%s\n\
\-}\n\
\import Test.Hspec ( hspec, describe, it, shouldBe )\n\
\%s\n\n\
\%s\n\n\n\
\main :: IO ()\n\
\main = hspec $ describe \"Tests:\" $ do\n\
\%s"

        compiledStr = printf formatString
                             (probID pbm)
                             (splitIntoLines $ probDesc pbm)
                             extraImport
                             transpiledMethod
                             (unlines $ map transpileTest $ probTests pbm)

        -- Newline approximately every 80 characters.
        -- Tries to split at words
        -- @map (replace '\160' ' ')@ replaces nonbreaking spaces with regular spaces
        splitIntoLines = sil 0 . groupBy (\x y -> isSpace x == isSpace y) . map (replace '\160' ' ')
            where
                sil _ [] = ""
                sil numChars (xs : xss)
                    | isSpace (head xs) || numChars <= 80 = xs ++ sil (numChars + length xs) xss
                    | otherwise = "\n" ++ xs ++ sil 0 xss

                replace a b c
                    | a == c    = b
                    | otherwise = c

        transpiledMethod = funcDeclToHaskell $ probMethod pbm

        extraImport
            | "Map.Map" `isInfixOf` transpiledMethod = "import qualified Data.Map.Strict as Map\n"
            | otherwise = ""

        transpileTest (test, result) = printf "    it %s $\n        %s `shouldBe` %s" (show transResult) transTest transResult
            where
                transResult = literalToHaskell result
                transTest   = funcCallToHaskell test


getAndCompileProblem :: String -> IO (String, String)
getAndCompileProblem problemID = compileProblem <$> getProblem problemID
