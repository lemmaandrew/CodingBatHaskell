{-From https://codingbat.com/prob/p125327
Given an array of strings, return a Map<String, Integer> containing a key for every different
string in the array, and the value is that string's length.
-}
import Control.Exception (assert)


wordLen :: [String] -> Map.Map String Integer
wordLen strings = undefined

main = do
    assert (wordLen ["a","bb","a","bb"] == (Map.fromList [("bb",2),("a",1)])) (putStrLn "Test passed")
    assert (wordLen ["this","and","that","and"] == (Map.fromList [("that",4),("and",3),("this",4)])) (putStrLn "Test passed")
    assert (wordLen ["code","code","code","bug"] == (Map.fromList [("code",4),("bug",3)])) (putStrLn "Test passed")
    assert (wordLen ["a","bb","a","bb"] == (Map.fromList [("bb",2),("a",1)])) (putStrLn "Test passed")
    assert (wordLen ["this","and","that","and"] == (Map.fromList [("that",4),("and",3),("this",4)])) (putStrLn "Test passed")
    assert (wordLen ["code","code","code","bug"] == (Map.fromList [("code",4),("bug",3)])) (putStrLn "Test passed")

