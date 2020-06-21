-- The Main module, built to download and compile the programs from https://codingbat.com/java

import Download

import Data.List (intercalate)

import Text.Printf

{-
-- Ugly as sin but only needed for printing purposes
-- Will not be included in the final build
-}
printSite :: IO ()
printSite = mapM_ (\(catName,problems) -> printf "\n\n\n\n--------------\n%s\n\n%s" catName (intercalate "\n\n" $ map (\(probName,probStr) -> probName ++ "\n" ++ probStr) problems))
            =<< (map unpackCategory) <$> getSite

main = printSite