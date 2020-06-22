{-From https://codingbat.com/prob/p168493
Given an array of non-empty strings, return a Map<String, String> with a key for every
different first character seen, with the value of all the strings starting with that character
appended together in the order they appear in the array.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


firstChar :: [String] -> Map.Map String String
firstChar strings = undefined

main :: IO ()
main = do
    assert (firstChar ["salt","tea","soda","toast"] == (Map.fromList [("s","saltsoda"),("t","teatoast")])) (putStrLn "Test passed")
    assert (firstChar ["aa","bb","cc","aAA","cCC","d"] == (Map.fromList [("a","aaaAA"),("b","bb"),("c","cccCC"),("d","d")])) (putStrLn "Test passed")
    assert (firstChar [] == Map.empty) (putStrLn "Test passed")
    assert (firstChar ["salt","tea","soda","toast"] == (Map.fromList [("s","saltsoda"),("t","teatoast")])) (putStrLn "Test passed")
    assert (firstChar ["aa","bb","cc","aAA","cCC","d"] == (Map.fromList [("a","aaaAA"),("b","bb"),("c","cccCC"),("d","d")])) (putStrLn "Test passed")
    assert (firstChar [] == Map.empty) (putStrLn "Test passed")

