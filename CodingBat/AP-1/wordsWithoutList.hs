{-From https://codingbat.com/prob/p183407
Given an array of strings, return a new List (e.g. an ArrayList) where all the strings
of the given length are omitted. See wordsWithout() below which is more difficult because
it uses arrays.
-}
import Control.Exception (assert)


wordsWithoutList :: [String] -> Int -> List
wordsWithoutList words len = undefined

main = do
    assert (wordsWithoutList ["a","bb","b","ccc"] 1 == ["bb","ccc"]) (putStrLn "Test passed")
    assert (wordsWithoutList ["a","bb","b","ccc"] 3 == ["a","bb","b"]) (putStrLn "Test passed")
    assert (wordsWithoutList ["a","bb","b","ccc"] 4 == ["a","bb","b","ccc"]) (putStrLn "Test passed")
    assert (wordsWithoutList ["a","bb","b","ccc"] 1 == ["bb","ccc"]) (putStrLn "Test passed")
    assert (wordsWithoutList ["a","bb","b","ccc"] 3 == ["a","bb","b"]) (putStrLn "Test passed")
    assert (wordsWithoutList ["a","bb","b","ccc"] 4 == ["a","bb","b","ccc"]) (putStrLn "Test passed")

