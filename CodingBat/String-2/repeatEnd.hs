{-From https://codingbat.com/prob/p152339
Given a string and an int n, return a string made of n repetitions of the last n characters
of the string. You may assume that n is between 0 and the length of the string, inclusive.
-}
import Control.Exception (assert)


repeatEnd :: String -> Int -> String
repeatEnd str n = undefined

main = do
    assert (repeatEnd "Hello" 3 == "llollollo") (putStrLn "Test passed")
    assert (repeatEnd "Hello" 2 == "lolo") (putStrLn "Test passed")
    assert (repeatEnd "Hello" 1 == "o") (putStrLn "Test passed")
    assert (repeatEnd "Hello" 3 == "llollollo") (putStrLn "Test passed")
    assert (repeatEnd "Hello" 2 == "lolo") (putStrLn "Test passed")
    assert (repeatEnd "Hello" 1 == "o") (putStrLn "Test passed")

