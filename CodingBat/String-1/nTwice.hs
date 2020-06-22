{-From https://codingbat.com/prob/p174148
Given a string and an int n, return a string made of the first and last n chars from
the string. The string length will be at least n.
-}
import Control.Exception (assert)


nTwice :: String -> Int -> String
nTwice str n = undefined

main :: IO ()
main = do
    assert (nTwice "Hello" 2 == "Helo") (putStrLn "Test passed")
    assert (nTwice "Chocolate" 3 == "Choate") (putStrLn "Test passed")
    assert (nTwice "Chocolate" 1 == "Ce") (putStrLn "Test passed")
    assert (nTwice "Hello" 2 == "Helo") (putStrLn "Test passed")
    assert (nTwice "Chocolate" 3 == "Choate") (putStrLn "Test passed")
    assert (nTwice "Chocolate" 1 == "Ce") (putStrLn "Test passed")

