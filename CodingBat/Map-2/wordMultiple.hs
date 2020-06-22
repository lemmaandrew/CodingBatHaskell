{-From https://codingbat.com/prob/p190862
Given an array of strings, return a Map<String, Boolean> where each different string is
a key and its value is true if that string appears 2 or more times in the array.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


wordMultiple :: [String] -> Map.Map String Bool
wordMultiple strings = undefined

main :: IO ()
main = do
    assert (wordMultiple ["a","b","a","c","b"] == (Map.fromList [("a",True),("b",True),("c",False)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","b","a"] == (Map.fromList [("a",False),("b",False),("c",False)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","c","c","c"] == (Map.fromList [("c",True)])) (putStrLn "Test passed")
    assert (wordMultiple ["a","b","a","c","b"] == (Map.fromList [("a",True),("b",True),("c",False)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","b","a"] == (Map.fromList [("a",False),("b",False),("c",False)])) (putStrLn "Test passed")
    assert (wordMultiple ["c","c","c","c"] == (Map.fromList [("c",True)])) (putStrLn "Test passed")

