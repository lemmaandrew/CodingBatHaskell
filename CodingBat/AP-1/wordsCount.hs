{-From https://codingbat.com/prob/p124620
Given an array of strings, return the count of the number of strings with the given length.
-}
import Control.Exception (assert)


wordsCount :: [String] -> Int -> Int
wordsCount words len = undefined

main = do
    assert (wordsCount ["a","bb","b","ccc"] 1 == 2) (putStrLn "Test passed")
    assert (wordsCount ["a","bb","b","ccc"] 3 == 1) (putStrLn "Test passed")
    assert (wordsCount ["a","bb","b","ccc"] 4 == 0) (putStrLn "Test passed")
    assert (wordsCount ["a","bb","b","ccc"] 1 == 2) (putStrLn "Test passed")
    assert (wordsCount ["a","bb","b","ccc"] 3 == 1) (putStrLn "Test passed")
    assert (wordsCount ["a","bb","b","ccc"] 4 == 0) (putStrLn "Test passed")

