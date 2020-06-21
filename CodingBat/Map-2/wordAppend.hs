{-From https://codingbat.com/prob/p103593
Loop over the given array of strings to build a result string like this: when a string
appears the 2nd, 4th, 6th, etc. time in the array, append the string to the result. Return
the empty string if no string appears a 2nd time.
-}
import Control.Exception (assert)


wordAppend :: [String] -> String
wordAppend strings = undefined

main = do
    assert (wordAppend ["a","b","a"] == "a") (putStrLn "Test passed")
    assert (wordAppend ["a","b","a","c","a","d","a"] == "aa") (putStrLn "Test passed")
    assert (wordAppend ["a","","a"] == "a") (putStrLn "Test passed")
    assert (wordAppend ["a","b","a"] == "a") (putStrLn "Test passed")
    assert (wordAppend ["a","b","a","c","a","d","a"] == "aa") (putStrLn "Test passed")
    assert (wordAppend ["a","","a"] == "a") (putStrLn "Test passed")

