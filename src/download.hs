-- for downloading the problems
{-
TODO:
    implement getCategory
    MAKE GETCATEGORY NOT UGLY GO TO BED
    implement getWebsite
    implement writeProgram
-}
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
                    , unpackCategory

                    , Site (..)
                    , getSite
                    ) where

import Debug.Trace
import Data.List (isInfixOf, intercalate, groupBy)
import Data.List.Split (splitOn)
import Text.Printf

import Text.HTML.Scalpel
import Text.Regex
import Text.Regex.Base

import Src.JavaFuncs


type Check = (String,String)
type Description = String
type Method = String
type Name = String

data Problem = Problem URL Name Description [Check] Method deriving (Eq,Show)

getProblem :: URL -> IO (Maybe Problem)
getProblem url = do
        page <- scrapeURL url getPage
        case page of
            Just page' -> return $ Just page'
            Nothing -> trace ("Failed getProblem with url: " ++ url) (return Nothing)
        where
    getChecks = map ((\[x,y] -> (x,y)) . splitOn " \8594 ") . filter (isInfixOf "\8594")
    getPage = do
        names <- texts $ "span" @: [hasClass "h2"]
        desc <- text $ "div" @: [hasClass "minh"]
        checks' <- texts textSelector
        methods <- texts "form"
        return $ Problem url (names !! 1) desc (getChecks checks') (last methods)        
        -- names !! 1 because head names is the category
        -- last methods because head is the login form

compileProblem :: Problem -> (Name,String)
compileProblem (Problem url name desc checks method) = (name,printf formatString url formatDesc extraImport formatMethod formatChecks) where
    formatString = "{-From %s\n\
\%s\n\
\-}\n\
\import Control.Exception (assert)\n\
\%s\n\n\
\%s\n\n\
\main :: IO ()\n\
\main = do\n\
\%s"

    -- newline approx. every 100 characters
    -- the groupBy is a better words
    formatDesc :: String
    formatDesc = go 0 $ groupBy (\x y -> (x == ' ') == (y == ' ')) desc where
        go _ [] = []
        go 0 (x:xs) = x ++ go (length x) xs
        go n (" ":xs) = go (n + 1) xs
        go n (x:xs)
            | n >= 100 = ('\n' : x) ++ go (length x) xs
            | otherwise = (' ' : x) ++ go (n + 1 + length x) xs

    extraImport :: String
    extraImport = if ("Map.Map" :: String) `isInfixOf` formatMethod
        then "import qualified Data.Map.Strict as Map\n"
    else ""

    formatChecks :: String
    formatChecks = unlines
                 $ map (\(call,res) -> printf "    assert (%s == %s) (putStrLn \"Test passed\")"
                                            (javaCallToHaskell call)
                                            (formatArgs res)) checks

    formatMethod :: String
    formatMethod = if "wordsWithoutList" `isInfixOf` method
        then "wordsWithoutList :: [String] -> Int -> [String]\nwordsWithoutList words len = undefined"
        else javaToHaskell method


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


data Category = Category Name [Maybe Problem]

{-
-- Returns a category page of problems
-- getProblem is Maybe because singular problems failing is something I'd want to inspect
-- on a case by case basis.
-- But an entire category failing is a big enough issue to throw an error.
-- The completed project will likely let this be an IO (Maybe Category),
-- but for now it's safer to just let it fail.
-}
getCategory :: URL -> IO Category
getCategory url = do 
        page' <- scrapeURL url page
        case page' of
            Just page'' -> page''
            Nothing -> error $ "Failed getCategory with url: " ++ url
        where
    page :: Scraper String (IO Category)
    page = do
        name <- text $ "span" @: [hasClass "h2"]
        hrefs <- attrs "href" $ "a" @: ["href" @=~ (makeRegex ("/prob/" :: String) :: Regex)]
        let problems = sequence $ map (getProblem . ("https://codingbat.com" ++)) hrefs
        return $ Category name <$> problems


{-
-- Unpacks a Category into useful data.
-- Returns (categoryName, [(problemName, compiledProblem)])
-- where the snd of the above tuple is only problems that have not failed.
-- Debug.Trace lets the user be warned of failed compilations.
-}
unpackCategory :: Category -> (Name, [(Name, String)])
unpackCategory (Category name problems) = (name, processProblems) where
    processProblems = filter (\(x,y) -> x ++ y /= "") $ map go problems where
        go problem = case problem of
            Just x -> compileProblem x
            Nothing -> ("","")


type Site = [Category]

{-
-- Same as getCategory, getSite failing is too big of an issue to let fall into a Maybe.
-- I'd rather the program halt than for getSite to fail.
-- When the project is completed this will like turn into an IO (Maybe Site).
-- Note to future self: IO (Maybe Site) == sequence <$> (IO [Maybe Category])
-}
getSite :: IO Site
getSite = do
        site <- scrapeURL "https://codingbat.com/java" homepage
        case site of
            Just site' -> site'
            Nothing -> error "Failed getSite"
        where
    homepage :: Scraper String (IO [Category])
    homepage = do
        hrefs <- attrs "href" $ "a" @: ["href" @=~ (makeRegex ("/java/" :: String) :: Regex)]
        return $ sequence $ map (getCategory . ("https://codingbat.com" ++)) hrefs