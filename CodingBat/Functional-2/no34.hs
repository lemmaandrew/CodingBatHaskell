{-From https://codingbat.com/prob/p184496
Given a list of strings, return a list of the strings, omitting any string length 3 or
4.
-}
import Control.Exception (assert)


no34 :: [String] -> [String]
no34 strings = undefined

main :: IO ()
main = do
    assert (no34 ["a","bb","ccc"] == ["a","bb"]) (putStrLn "Test passed")
    assert (no34 ["a","bb","ccc","dddd"] == ["a","bb"]) (putStrLn "Test passed")
    assert (no34 ["ccc","dddd","apple"] == ["apple"]) (putStrLn "Test passed")
    assert (no34 ["a","bb","ccc"] == ["a","bb"]) (putStrLn "Test passed")
    assert (no34 ["a","bb","ccc","dddd"] == ["a","bb"]) (putStrLn "Test passed")
    assert (no34 ["ccc","dddd","apple"] == ["apple"]) (putStrLn "Test passed")

