{-From https://codingbat.com/prob/p121236
Given an array of strings, return a new array without the strings that are equal to the
target string. One approach is to count the occurrences of the target string, make a new
array of the correct length, and then copy over the correct strings.
-}
import Control.Exception (assert)


wordsWithout :: [String] -> String -> [String]
wordsWithout words target = undefined

main = do
    assert (wordsWithout ["a","b","c","a"] "a" == ["b","c"]) (putStrLn "Test passed")
    assert (wordsWithout ["a","b","c","a"] "b" == ["a","c","a"]) (putStrLn "Test passed")
    assert (wordsWithout ["a","b","c","a"] "c" == ["a","b","a"]) (putStrLn "Test passed")
    assert (wordsWithout ["a","b","c","a"] "a" == ["b","c"]) (putStrLn "Test passed")
    assert (wordsWithout ["a","b","c","a"] "b" == ["a","c","a"]) (putStrLn "Test passed")
    assert (wordsWithout ["a","b","c","a"] "c" == ["a","b","a"]) (putStrLn "Test passed")

