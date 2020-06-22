{-From https://codingbat.com/prob/p105722
Given a string, compute recursively a new string where all the lowercase 'x' chars have
been moved to the end of the string.
-}
import Control.Exception (assert)


endX :: String -> String
endX str = undefined

main :: IO ()
main = do
    assert (endX "xxre" == "rexx") (putStrLn "Test passed")
    assert (endX "xxhixx" == "hixxxx") (putStrLn "Test passed")
    assert (endX "xhixhix" == "hihixxx") (putStrLn "Test passed")
    assert (endX "xxre" == "rexx") (putStrLn "Test passed")
    assert (endX "xxhixx" == "hixxxx") (putStrLn "Test passed")
    assert (endX "xhixhix" == "hihixxx") (putStrLn "Test passed")

