-- for downloading the problems
{-
TODO:
    implement getCategory
    MAKE GETCATEGORY NOT UGLY GO TO BED
    implement getWebsite
    implement writeProgram
-}
{-#LANGUAGE OverloadedStrings#-}

module Download ( Check
                , Description
                , Method
                , Name

                , Problem
                , getProblem
                , compileProblem

                , Category
                , getCategory
                , unpackCategory
                )where

import Debug.Trace
import Data.List (isInfixOf, intercalate, groupBy)
import Data.List.Split (splitOn)
import Text.Printf

import Text.HTML.Scalpel
import Text.Regex
import Text.Regex.Base

import JavaFuncs


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
compileProblem (Problem url name desc checks method) = (name,printf formatString url formatDesc formatMethod formatChecks) where
    formatString = "{-From %s\n\
\%s\n\
\-}\n\
\import Control.Exception (assert)\n\n\n\
\%s\n\n\
\main = do\n\
\%s"

    -- newline approx. every 100 characters
    -- the groupBy is a better words
    formatDesc = go 0 $ groupBy (\x y -> (x == ' ') == (y == ' ')) desc where
        go _ [] = []
        go 0 (x:xs) = x ++ go (length x) xs
        go n (" ":xs) = go (n + 1) xs
        go n (x:xs)
            | n >= 100 = ('\n' : x) ++ go (length x) xs
            | otherwise = (' ' : x) ++ go (n + 1 + length x) xs

    formatChecks = unlines
                 $ map (\(call,res) -> printf "    assert (%s == %s) (putStrLn \"Test passed\")"
                                            (javaCallToHaskell call)
                                            (formatArgs res)) checks

    formatMethod = javaToHaskell method

-- gets the problem through the URL and returns (problem's name, compiled problem)
getAndCompileProblem :: URL -> IO (Name,String)
getAndCompileProblem url = do
    page <- getProblem url
    case page of
        Just page' -> return $ compileProblem page'
        Nothing -> error $ "failed getProblem with url: " ++ url


data Category = Category Name [Maybe Problem]

-- super messy
-- effectively returns IO (Maybe (IO (String,[Maybe Problem])))
getCategory :: URL -> IO (Maybe (IO Category))
getCategory url = scrapeURL url page where
    page :: Scraper String (IO Category)
    page = do
        name <- text $ "span" @: [hasClass "h2"]
        hrefs <- attrs "href" $ "a" @: ["href" @=~ (makeRegex ("/prob/" :: String) :: Regex)]
        let problems = sequence $ map (getProblem . ("https://codingbat.com" ++)) hrefs
        return $ Category name <$> problems

-- Because getCategory is so ugly,
-- I'm making this function just to look inside of one
unpackCategory :: Category -> (Name, [(Name, String)])
unpackCategory (Category name problems) = (name, processProblems) where
    processProblems = map go problems where
        go problem = case problem of
            Just x -> compileProblem x
            Nothing -> ("","")