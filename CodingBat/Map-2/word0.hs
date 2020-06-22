{-From https://codingbat.com/prob/p152303
Given an array of strings, return a Map<String, Integer> containing a key for every different
string in the array, always with the value 0. For example the string "hello" makes the
pair "hello":0. We'll do more complicated counting later, but for this problem the value
is simply 0.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


word0 :: [String] -> Map.Map String Integer
word0 strings = undefined

main :: IO ()
main = do
    assert (word0 ["a","b","a","b"] == (Map.fromList [("a",0),("b",0)])) (putStrLn "Test passed")
    assert (word0 ["a","b","a","c","b"] == (Map.fromList [("a",0),("b",0),("c",0)])) (putStrLn "Test passed")
    assert (word0 ["c","b","a"] == (Map.fromList [("a",0),("b",0),("c",0)])) (putStrLn "Test passed")
    assert (word0 ["a","b","a","b"] == (Map.fromList [("a",0),("b",0)])) (putStrLn "Test passed")
    assert (word0 ["a","b","a","c","b"] == (Map.fromList [("a",0),("b",0),("c",0)])) (putStrLn "Test passed")
    assert (word0 ["c","b","a"] == (Map.fromList [("a",0),("b",0),("c",0)])) (putStrLn "Test passed")

