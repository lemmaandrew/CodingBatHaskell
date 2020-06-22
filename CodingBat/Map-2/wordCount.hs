{-From https://codingbat.com/prob/p117630
The classic word-count algorithm: given an array of strings, return a Map<String, Integer>
with a key for each different string, with the value the number of times that string
appears in the array.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


wordCount :: [String] -> Map.Map String Integer
wordCount strings = undefined

main :: IO ()
main = do
    assert (wordCount ["a","b","a","c","b"] == (Map.fromList [("a",2),("b",2),("c",1)])) (putStrLn "Test passed")
    assert (wordCount ["c","b","a"] == (Map.fromList [("a",1),("b",1),("c",1)])) (putStrLn "Test passed")
    assert (wordCount ["c","c","c","c"] == (Map.fromList [("c",4)])) (putStrLn "Test passed")
    assert (wordCount ["a","b","a","c","b"] == (Map.fromList [("a",2),("b",2),("c",1)])) (putStrLn "Test passed")
    assert (wordCount ["c","b","a"] == (Map.fromList [("a",1),("b",1),("c",1)])) (putStrLn "Test passed")
    assert (wordCount ["c","c","c","c"] == (Map.fromList [("c",4)])) (putStrLn "Test passed")

