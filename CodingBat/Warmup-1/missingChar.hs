{-From https://codingbat.com/prob/p190570
Given a non-empty string and an int n, return a new string where the char at index n
has been removed. The value of n will be a valid index of a char in the original string
(i.e. n will be in the range 0..str.length()-1 inclusive).
-}
import Control.Exception (assert)


missingChar :: String -> Int -> String
missingChar str n = undefined

main = do
    assert (missingChar "kitten" 1 == "ktten") (putStrLn "Test passed")
    assert (missingChar "kitten" 0 == "itten") (putStrLn "Test passed")
    assert (missingChar "kitten" 4 == "kittn") (putStrLn "Test passed")
    assert (missingChar "kitten" 1 == "ktten") (putStrLn "Test passed")
    assert (missingChar "kitten" 0 == "itten") (putStrLn "Test passed")
    assert (missingChar "kitten" 4 == "kittn") (putStrLn "Test passed")

