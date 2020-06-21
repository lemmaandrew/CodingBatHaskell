{-From https://codingbat.com/prob/p108853
Given a string, return a new string made of 3 copies of the last 2 chars of the original
string. The string length will be at least 2.
-}
import Control.Exception (assert)


extraEnd :: String -> String
extraEnd str = undefined

main = do
    assert (extraEnd "Hello" == "lololo") (putStrLn "Test passed")
    assert (extraEnd "ab" == "ababab") (putStrLn "Test passed")
    assert (extraEnd "Hi" == "HiHiHi") (putStrLn "Test passed")
    assert (extraEnd "Hello" == "lololo") (putStrLn "Test passed")
    assert (extraEnd "ab" == "ababab") (putStrLn "Test passed")
    assert (extraEnd "Hi" == "HiHiHi") (putStrLn "Test passed")

