module Main where


import Data.List ( dropWhileEnd )
import Download.Scrape ( Category(..), Problem, getSite )
import Download.Compile ( compileProblem )
import System.Directory ( createDirectoryIfMissing )
import System.Environment ( getArgs )
import Text.Printf ( printf )


writeProblem :: FilePath -> Problem -> IO ()
writeProblem directory pbm =
    let (filename, fileContents) = compileProblem pbm
        path = printf "%s/%s.hs" directory filename
    in do
        createDirectoryIfMissing False directory
        writeFile path fileContents


writeCategory :: FilePath -> Category -> IO ()
writeCategory directory (Category name problems) =
    mapM_ (writeProblem (directory <> "/" <> name)) problems


main :: IO ()
main = do
    putStrLn "Are you sure you want to run Main? It will overwrite all files you have worked on [y/N]"
    response <- getLine
    if response == "y"
        then do
            args <- getArgs
            let directory = if not $ null args
                                then dropWhileEnd (== '/') $ head args
                            else "./CodingBat"
            putStrLn "Downloading https://codingbat.com/java ..."
            site <- getSite
            putStrLn "Done downloading!"
            createDirectoryIfMissing False directory
            putStrLn "Writing problems..."
            mapM_ (writeCategory directory) site
            putStrLn "Finished!"
    else putStrLn "Exiting..."
