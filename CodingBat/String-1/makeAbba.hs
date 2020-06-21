{-From https://codingbat.com/prob/p161056
Given two strings, a and b, return the result of putting them together in the order abba,
e.g. "Hi" and "Bye" returns "HiByeByeHi".
-}
import Control.Exception (assert)


makeAbba :: String -> String -> String
makeAbba a b = undefined

main = do
    assert (makeAbba "Hi" "Bye" == "HiByeByeHi") (putStrLn "Test passed")
    assert (makeAbba "Yo" "Alice" == "YoAliceAliceYo") (putStrLn "Test passed")
    assert (makeAbba "What" "Up" == "WhatUpUpWhat") (putStrLn "Test passed")
    assert (makeAbba "Hi" "Bye" == "HiByeByeHi") (putStrLn "Test passed")
    assert (makeAbba "Yo" "Alice" == "YoAliceAliceYo") (putStrLn "Test passed")
    assert (makeAbba "What" "Up" == "WhatUpUpWhat") (putStrLn "Test passed")

