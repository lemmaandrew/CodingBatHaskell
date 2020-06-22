{-From https://codingbat.com/prob/p128796
Given a string and an int n, return a string made of the first n characters of the
string, followed by the first n-1 characters of the string, and so on. You may assume
that n is between 0 and the length of the string, inclusive (i.e. n >= 0 and n <=
str.length()).
-}
import Control.Exception (assert)


repeatFront :: String -> Int -> String
repeatFront str n = undefined

main :: IO ()
main = do
    assert (repeatFront "Chocolate" 4 == "ChocChoChC") (putStrLn "Test passed")
    assert (repeatFront "Chocolate" 3 == "ChoChC") (putStrLn "Test passed")
    assert (repeatFront "IceCream" 2 == "IcI") (putStrLn "Test passed")
    assert (repeatFront "Chocolate" 4 == "ChocChoChC") (putStrLn "Test passed")
    assert (repeatFront "Chocolate" 3 == "ChoChC") (putStrLn "Test passed")
    assert (repeatFront "IceCream" 2 == "IcI") (putStrLn "Test passed")

