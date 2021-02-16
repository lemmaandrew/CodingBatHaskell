{-# LANGUAGE LambdaCase #-}

{- Converts parsed Java to Haskell
This could hypothetically be used to transpile to any given language :D
-}

module Java.Transpile
    ( HaskellString
    , dataTypeToHaskell
    , singleTypeToHaskell
    , paramedTypeToHaskell
    , arrLstToHaskell
    , funcDeclToHaskell
    , literalToHaskell
    , funcCallToHaskell

    , transpileDataType
    , transpileFuncCall
    , transpileFuncDecl
    , transpileLiteral
    ) where

import Data.Bifunctor ( bimap )
import Data.Char ( toUpper )
import Data.List ( intercalate, isPrefixOf )
import qualified Data.Map.Strict as Map
import Java.Parse
    ( JavaString,
      FuncCall(fcName, fcParams),
      FuncDecl(fdReturnType, fdParams, fdName),
      Literal(..),
      DataType(..),
      pDataType,
      pLiteral,
      pFuncDecl,
      pFuncCall,
      parseJava )
import System.Environment ( getArgs )
import Text.Printf ( printf )


type HaskellString = String


dataTypeToHaskell :: DataType -> HaskellString
dataTypeToHaskell st@(SingleType _) = singleTypeToHaskell st
dataTypeToHaskell pt@(ParamedType _ _) = paramedTypeToHaskell pt

singleTypeToHaskell :: DataType -> HaskellString
singleTypeToHaskell (SingleType (x:xs)) =
    case toUpper x : xs of
        "Void"    -> "IO ()"
        "Boolean" -> "Bool"
        str       -> str

paramedTypeToHaskell :: DataType -> HaskellString
paramedTypeToHaskell (ParamedType (x:xs) dtypes) =
    case toUpper x : xs of
        "List"      -> arrLstToHaskell (ParamedType "List" dtypes)
        "ArrayList" -> arrLstToHaskell (ParamedType "ArrayList" dtypes)
        "Map"       -> paramedTypeToHaskell (ParamedType "Map.Map" dtypes)
        str -> unwords (str : map parenthesize dtypes)
    where
        -- | wraps parentheses around datatypes with more than one word.  
        -- Which, for our purposes, is all of them except for Haskell linked lists
        parenthesize st@(SingleType _) = singleTypeToHaskell st
        parenthesize pt@(ParamedType (y:ys) dtypes') =
            case toUpper y : ys of
                "List"      -> paramedTypeToHaskell pt
                "ArrayList" -> paramedTypeToHaskell pt
                _ -> concat ["(", paramedTypeToHaskell pt, ")"]

-- | Converts an array, List, or an ArrayList to a Haskell list  
-- They're the same parse *shrug*
arrLstToHaskell :: DataType -> HaskellString
arrLstToHaskell (ParamedType dtype [contains]) = case dtype of
    "Array"     -> concat ["[", dataTypeToHaskell contains, "]"]
    "List"      -> concat ["[", dataTypeToHaskell contains, "]"]
    "ArrayList" -> concat ["[", dataTypeToHaskell contains, "]"]


funcDeclToHaskell :: FuncDecl -> HaskellString
funcDeclToHaskell fd = printf "%s :: %s\n%s = undefined" (fdName fd) types declLine
    where
        types = intercalate " -> "
              $ map (dataTypeToHaskell . fst) (fdParams fd)
              ++ [dataTypeToHaskell (fdReturnType fd)]
        declLine = unwords $ fdName fd : map snd (fdParams fd)


literalToHaskell :: Literal -> HaskellString
literalToHaskell = \case
    LitInteger n -> if n < 0 then printf "(%d)" n else show n
    LitDouble n  -> show n
    LitBool b    -> show b
    LitString s  -> '"' : s ++ "\""
    LitList xs   -> '[' : intercalate "," (map literalToHaskell xs) ++ "]"
    LitMap mp    -> "Map.fromList [" ++ fixMapping mp ++ "]"
    where
        -- Without this function, extra spaces are formed around elements of the Map
        -- e.g., LitMap (fromList [(LitInteger 1,LitInteger 2)])
        --          -> "Map.fromList [(\"1\", \"2\")]"
        -- which is not what we want
        fixMapping mp = intercalate ","
                      $ map (\(k,v) -> printf "(%s,%s)" (literalToHaskell k) (literalToHaskell v))
                      $ Map.toList mp


funcCallToHaskell :: FuncCall -> HaskellString
funcCallToHaskell fc = unwords (fcName fc : map (fixParens . literalToHaskell) (fcParams fc))
    where
        fixParens str
            | "Map.fromList" `isPrefixOf` str = '(' : str ++ ")"
            | otherwise = str


-- * Direct Java -> HaskellString conversions

transpileDataType :: JavaString -> HaskellString
transpileDataType = dataTypeToHaskell . parseJava pDataType

transpileLiteral :: JavaString -> HaskellString
transpileLiteral = literalToHaskell . parseJava pLiteral

transpileFuncDecl :: JavaString -> HaskellString
transpileFuncDecl = funcDeclToHaskell . parseJava pFuncDecl

transpileFuncCall :: JavaString -> HaskellString
transpileFuncCall = funcCallToHaskell . parseJava pFuncCall


main :: IO ()
main = do
    (process : arg : _) <- getArgs
    case process of
        "dt"       -> putStrLn $ transpileDataType arg
        "lit"      -> putStrLn $ transpileLiteral arg
        "funcDecl" -> putStrLn $ transpileFuncDecl arg
        "funcCall" -> putStrLn $ transpileFuncCall arg
