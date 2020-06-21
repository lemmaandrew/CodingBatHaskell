{-From https://codingbat.com/prob/p131516
Given a string, return the longest substring that appears at both the beginning and end
of the string without overlapping. For example, sameEnds("abXab") is "ab".
-}
import Control.Exception (assert)


sameEnds :: String -> String
sameEnds string = undefined

main = do
    assert (sameEnds "abXYab" == "ab") (putStrLn "Test passed")
    assert (sameEnds "xx" == "x") (putStrLn "Test passed")
    assert (sameEnds "xxx" == "x") (putStrLn "Test passed")
    assert (sameEnds "abXYab" == "ab") (putStrLn "Test passed")
    assert (sameEnds "xx" == "x") (putStrLn "Test passed")
    assert (sameEnds "xxx" == "x") (putStrLn "Test passed")

