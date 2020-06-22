-- The Main module, built to download and compile the programs from https://codingbat.com/java

import Data.List (intercalate)
import Debug.Trace
import System.Directory
import System.IO
import Text.Printf

import Src.Download

writeProblem :: FilePath -> Problem -> IO ()
writeProblem directory pbm =
    let (fileName,fileContents) = compileProblem pbm
        path = printf "%s/%s.hs" directory fileName
    in do
        createDirectoryIfMissing False directory
        putStrLn $ "Writing: " ++ path
        handle <- openFile path WriteMode
        hPutStrLn handle fileContents
        hClose handle

writeCategory :: FilePath -> Category -> IO ()
writeCategory directory (Category name problems) = mapM_ go problems where
    go (Just pbm) = writeProblem (directory ++ "/" ++ name) pbm
    go (Nothing) = trace ("Failed to write problem in category " ++ name) (return ())

main :: IO ()
main = do
    putStrLn "Are you sure you want to run Main? It will overwrite all files you have worked on [y/N]"
    response <- getLine
    if response == "y"
        then do
            putStrLn "Downloading https://codingbat.com/java ..."
            createDirectoryIfMissing False "./CodingBat"
            mapM_ (\cat@(Category name _) ->
                        trace ("Writing " ++ name) (writeCategory "./CodingBat" cat)) =<< getSite
            putStrLn "Finished!"
    else putStrLn "Exiting..."