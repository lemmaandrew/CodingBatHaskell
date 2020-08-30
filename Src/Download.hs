-- downloads the problems off of https://codingbat.com/java

{-#LANGUAGE OverloadedStrings#-}

module Src.Download ( Check
                    , Description
                    , Method
                    , Name

                    , Problem (..)
                    , getProblem
                    , compileProblem

                    , Category (..)
                    , getCategory

                    , Site (..)
                    , getSite
                    ) where

import Data.List (isInfixOf, intercalate, groupBy, nub)
import Data.Maybe (catMaybes)
import Debug.Trace
import Text.Printf
import Text.ParserCombinators.ReadP

import Data.List.Split (splitOn)
import Text.HTML.Scalpel
import Text.Regex.TDFA

import Src.JavaParser


type Check = (MethodCall,String)
type Description = String
type Method = String
type Name = String

data Problem = Problem URL Name Description [Check] Method deriving (Eq,Show)

{-
-- Returns a single problem
-- Will return Nothing on failure
-}
getProblem :: URL -> IO (Maybe Problem)
getProblem url = do
        putStrLn $ "Downloading: " ++ url
        page <- scrapeURL url getPage
        case page of
            Just page' -> return $ Just page'
            Nothing -> trace ("Failed getProblem with url: " ++ url) (return Nothing)
        where
    getChecks = nub . map ((\[x,y] -> (javaToMethodCall x, fst $ last $ readP_to_S (parseLiteral +++ javaIdentifier) y)) . splitOn " \8594 ")
                        . filter (isInfixOf "\8594")
    getPage = do
        names <- texts $ "span" @: [hasClass "h2"]
        desc <- text $ "div" @: [hasClass "minh"]
        checks' <- texts textSelector
        methods <- texts "form"
        return $ Problem url (names !! 1) desc (getChecks checks') (last methods)
        -- names !! 1 because head names is the category
        -- last methods because head is the login form

compileProblem :: Problem -> (Name,String)
compileProblem (Problem url name desc checks method) = (name, printf formatString url formatDesc extraImport formatMethod formatChecks) where
    formatString = "{-From %s\n\
\%s\n\
\-}\n\
\import Test.Hspec\n\
\%s\n\n\
\%s\n\n\
\main :: IO ()\n\
\main = hspec $ describe \"Tests:\" $ do\n\
\%s"

    -- newline approx. every 100 characters
    -- the groupBy is a better words
    -- `map (replace '\160' ' ') is replacing nonbreaking spaces which appear at random
    formatDesc :: String
    formatDesc = map (replace '\160' ' ') $ go 0 $ groupBy (\x y -> (x == ' ') == (y == ' ')) desc where
        go _ [] = []
        go 0 (x:xs) = x ++ go (length x) xs
        go n (" ":xs) = go (n + 1) xs
        go n (x:xs)
            | n >= 100 = ('\n' : x) ++ go (length x) xs
            | otherwise = (' ' : x) ++ go (n + 1 + length x) xs
        replace a b c
            | c == a    = b
            | otherwise = c

    extraImport :: String
    extraImport
        | "Map.Map" `isInfixOf` formatMethod = "import qualified Data.Map.Strict as Map\n"
        | otherwise = ""

    formatChecks :: String
    formatChecks = unlines
                 $ map (\(call,res) -> printf "   it %s $ %s `shouldBe` %s" (show res) (methodCallToHaskell call) res)
                       checks

    formatMethod :: String
    formatMethod
        | "wordsWithoutList" `isInfixOf` method = "wordsWithoutList :: [String] -> Int -> [String]\nwordsWithoutList words len = undefined"
        | otherwise = javaMToHaskellF method


{-
-- Gets the problem through the URL and returns (problem's name, compiled problem)
-- Basically only for debugging purposes
-}
getAndCompileProblem :: URL -> IO (Name,String)
getAndCompileProblem url = do
    page <- getProblem url
    case page of
        Just page' -> return $ compileProblem page'
        Nothing -> error $ "failed getProblem with url: " ++ url


data Category = Category Name [Problem]

{-
-- Returns a category page of problems
-- Will return Nothing on failure to download page
-}
getCategory :: URL -> IO (Maybe Category)
getCategory url = do
        putStrLn $ "Downloading problems from: " ++ url
        page' <- scrapeURL url page
        case page' of
            Just page'' -> Just <$> page''
            Nothing -> return $ trace ("Failed getCategory with url: " ++ url) Nothing
    where
    page :: Scraper String (IO Category)
    page = do
        name <- text $ "span" @: [hasClass "h2"]
        hrefs <- attrs "href" $ "a" @: ["href" @=~ (makeRegex ("/prob/" :: String) :: Regex)]
        let problems = sequence $ map (getProblem . ("https://codingbat.com" ++)) hrefs
        return $ Category name <$> catMaybes <$> problems -- filtering Nothings from problems


type Site = [Category]


-- throws error on failure to download entire site
-- because if you fail to download the site might as well restart the program
getSite :: IO Site
getSite = do
        site <- scrapeURL "https://codingbat.com/java" homepage
        case site of
            Just site' -> site'
            Nothing -> error "Failed to download https://codingbat.com/java"
        where
    homepage :: Scraper String (IO [Category])
    homepage = do
        hrefs <- attrs "href" $ "a" @: ["href" @=~ (makeRegex ("/java/" :: String) :: Regex)]
        let cats = sequence $ map (getCategory . ("https://codingbat.com" ++)) hrefs
        return $ catMaybes <$> cats