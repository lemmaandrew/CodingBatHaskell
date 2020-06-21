{-From https://codingbat.com/prob/p194496
Given a list of strings, return a list of the strings, omitting any string length 4 or
more.
-}
import Control.Exception (assert)


noLong :: [String] -> [String]
noLong strings = undefined

main = do
    assert (noLong ["this","not","too","long"] == ["not","too"]) (putStrLn "Test passed")
    assert (noLong ["a","bbb","cccc"] == ["a","bbb"]) (putStrLn "Test passed")
    assert (noLong ["cccc","cccc","cccc"] == []) (putStrLn "Test passed")
    assert (noLong ["this","not","too","long"] == ["not","too"]) (putStrLn "Test passed")
    assert (noLong ["a","bbb","cccc"] == ["a","bbb"]) (putStrLn "Test passed")
    assert (noLong ["cccc","cccc","cccc"] == []) (putStrLn "Test passed")

