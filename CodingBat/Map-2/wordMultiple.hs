{-From https://codingbat.com/prob/p190862
Given an array of strings, return a Map<String, Boolean> where each different string is
a key and its value is true if that string appears 2 or more times in the array.
-}
import Control.Exception (assert)


wordMultiple :: [String] -> Map.Map String Boolean
wordMultiple strings = undefined

main = do
    assert (wordMultiple ["a","b","a","c","b"] == (Map.fromList [("a",true),("b",true),("c",false)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","b","a"] == (Map.fromList [("a",false),("b",false),("c",false)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","c","c","c"] == (Map.fromList [("c",true)])) (putStrLn "Test passed")
    assert (wordMultiple ["a","b","a","c","b"] == (Map.fromList [("a",true),("b",true),("c",false)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","b","a"] == (Map.fromList [("a",false),("b",false),("c",false)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","c","c","c"] == (Map.fromList [("c",true)])) (putStrLn "Test passed")

