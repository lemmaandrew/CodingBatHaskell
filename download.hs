-- for downloading the problems
{-
TODO:
    implement getCategory
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
                )where

import Control.Applicative ((<|>))
import Debug.Trace
import Data.List (isInfixOf, intercalate)
import Data.List.Split (splitOn)
import Text.Printf

import Text.HTML.Scalpel

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
compileProblem (Problem _ name desc checks method) = (name,printf formatString formatDesc formatMethod formatChecks) where
    formatString = "{-\n\
\%s\n\
\-}\n\
\import Control.Exception (assert)\n\n\n\
\%s\n\n\
\main = do\n\
\%s"

    -- newline approx. every 100 characters
    formatDesc = go 0 $ words desc where
        go _ [] = []
        go 0 (x:xs) = x ++ go (length x) xs
        go n (x:xs)
            | n >= 100 = ('\n' : x) ++ go (length x) xs
            | otherwise = (' ' : x) ++ go (n + 1 + length x) xs

    formatChecks = unlines
                 $ map (\(call,res) -> printf "    assert (%s == %s) (putStrLn \"Test passed\")"
                                            (javaCallToHaskell call)
                                            (formatArgs res)) checks

    formatMethod = javaToHaskell method


data Category = Category Name [Problem]
