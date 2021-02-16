{- Scrapes https://codingbat.com/java for its problems
-}
{-# LANGUAGE OverloadedStrings #-}

module Download.Scrape
    ( Problem (..)
    , getProblem

    , Category (..)
    , getCategory

    , getSite
    ) where

import qualified Data.ByteString.Lazy as BL
import Control.Concurrent.Async ( mapConcurrently )
import Data.Char ( chr, ord, toUpper )
import Data.List ( isInfixOf, stripPrefix )
import Data.Maybe ( fromJust, mapMaybe )
import Java.Parse
    ( FuncCall,
      FuncDecl(fdReturnType, fdName),
      Literal,
      DataType(..),
      pLiteral,
      pFuncDecl,
      pFuncCall,
      parseJava )
import Network.HTTP.Client
    ( httpLbs,
      newManager,
      parseRequest,
      Request(method, requestBody, requestHeaders),
      RequestBody(RequestBodyLBS),
      Response(responseBody) )
import Network.HTTP.Client.TLS ( tlsManagerSettings )
import Text.HTML.Scalpel
    ( scrapeURL, attrs, scrape, text, texts, (@:), (@=), hasClass )
import Text.HTML.TagSoup ( parseTags, Tag )
import Text.Printf ( printf )


stringToBL :: String -> BL.ByteString
stringToBL = BL.pack . map (fromIntegral . ord)

blToString :: BL.ByteString -> String
blToString = map (chr . fromIntegral) . BL.unpack

data Problem = Problem
    { probID     :: String
    , probDesc   :: String
    , probMethod :: FuncDecl
    , probTests  :: [(FuncCall, Literal)]
    } deriving (Eq, Show)


getProblem :: String -> IO Problem
getProblem problemID = do
    let url = "https://codingbat.com/prob/" <> problemID 
    manager <- newManager tlsManagerSettings
    
    request <- parseRequest url
    response <- httpLbs request manager
    
    let pageBody = parseTags $ show $ responseBody response
        Just (method, declStr) = getMethod pageBody
        Just description = scrape (text $ "div" @: [hasClass "minh"]) pageBody
    Just tests <- buildTests method <$> getTests method declStr

    return $ Problem problemID description method tests

    where
        getMethod :: [Tag String] -> Maybe (FuncDecl, String)
        getMethod body = flip scrape body $ do
            codeform <- text $ "form" @: ["name" @= "codeform"]
            -- Can't do takeWhile (/= '\n') because codeform does literal text,
            -- so '\n' -> '\\n', therfore we check for '\\'
            let declStr' = takeWhile (/= '\\') codeform
                declStr = if "wordsWithoutList" `isInfixOf` declStr'
                    then "public List<String> wordsWithoutList(String[] words, int len) {" 
                    else declStr'
                -- wordsWithoutList has a messed up return type:
                -- public List wordsWithoutList(String[] words, int len) {
                -- So we need to fix it
            return (parseJava pFuncDecl declStr, declStr)

        -- | Returns the HTML for the tests
        getTests method declStr = do         
            let defaultCode, payloadStr :: String
                -- The code that we need to get the test results.
                -- It doesn't need to pass the tests, it only needs to compile
                defaultCode = printf "%s\n  return %s;\n}\n"
                                declStr
                                (defaultLiteral $ fdReturnType method)
                payloadStr = printf "id=%s&code=%s&cuname=&owner="
                                problemID
                                defaultCode
                -- We don't need to worry about properly formatting the payload in form-urlencoded;
                -- we won't be passing any special characters that require formatting

            manager <- newManager tlsManagerSettings
            -- Not technically necessary to make a new manager: we could just reuse the old one
            -- but I like to keep the managers separated because HTTP gets and posts are spooky
            -- and I don't want anything to leak

            initialRequest <- parseRequest "http://codingbat.com/run"
            let request = initialRequest { method = "POST"
                                         , requestBody = RequestBodyLBS $ stringToBL payloadStr
                                         , requestHeaders = [("Content-type", "application/x-www-form-urlencoded")]
                                         }
            responseBody <$> httpLbs request manager

        buildTests method testsHTML = do
            soup <- scrape (texts $ "td" @: []) $ parseTags testsHTML
            let testStrs = filter ((stringToBL $ fdName method) `BL.isPrefixOf`) soup
                -- ^ Only the table cells which contain tests
                (callStrs, resultStrs) = unzip $ map ((\[a, b] -> (a, BL.tail b)) . BL.split 146) testStrs
                --                                                    ^ Removes initial space  ^ right arrow
                parsedCalls   = map (parseJava pFuncCall . blToString) callStrs
                parsedResults = map (parseJava pLiteral . blToString) resultStrs
            return $ zip parsedCalls parsedResults

        defaultLiteral :: DataType -> String
        defaultLiteral (ParamedType _ _) = "null"
        defaultLiteral (SingleType (x:xs)) = case toUpper x : xs of
            "Int" -> "0"
            "Integer" -> "0"
            "Double" -> "0"
            "Char" -> "'0'"
            "Boolean" -> "false"
            "String" -> "null"


-- | A collection of problems
data Category = Category String [Problem] deriving (Eq, Show)


getCategory :: String -> IO Category
getCategory catName = do
    page <- scrapeURL ("https://codingbat.com/java/" <> catName) getCategory'
    fromJust page
    where
        getCategory' = do
            hrefs <- attrs "href" "a"
            let problems = mapConcurrently getProblem $ mapMaybe (stripPrefix "/prob/") hrefs
            return $ Category catName <$> problems

getSite :: IO [Category]
getSite = do
    site <- scrapeURL "https://codingbat.com/java" categories
    fromJust site
    where
        categories = do
            hrefs <- attrs "href" "a"
            return $ mapM getCategory $ mapMaybe (stripPrefix "/java/") hrefs
            --       ^ mapM not mapConcurrently to mitigate timeouts


main :: IO ()
main = getSite >>= mapM_ print
