{-From https://codingbat.com/prob/p183837
Given an array of strings, return a new array containing the first N strings. N will
be in the range 1..length.
-}
import Control.Exception (assert)


wordsFront :: [String] -> Int -> [String]
wordsFront words n = undefined

main = do
    assert (wordsFront ["a","b","c","d"] 1 == ["a"]) (putStrLn "Test passed")
    assert (wordsFront ["a","b","c","d"] 2 == ["a","b"]) (putStrLn "Test passed")
    assert (wordsFront ["a","b","c","d"] 3 == ["a","b","c"]) (putStrLn "Test passed")
    assert (wordsFront ["a","b","c","d"] 1 == ["a"]) (putStrLn "Test passed")
    assert (wordsFront ["a","b","c","d"] 2 == ["a","b"]) (putStrLn "Test passed")
    assert (wordsFront ["a","b","c","d"] 3 == ["a","b","c"]) (putStrLn "Test passed")

