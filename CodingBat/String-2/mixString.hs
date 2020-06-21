{-From https://codingbat.com/prob/p125185
Given two strings, a and b, create a bigger string made of the first char of a, the
first char of b, the second char of a, the second char of b, and so on. Any leftover
chars go at the end of the result.
-}
import Control.Exception (assert)


mixString :: String -> String -> String
mixString a b = undefined

main = do
    assert (mixString "abc" "xyz" == "axbycz") (putStrLn "Test passed")
    assert (mixString "Hi" "There" == "HTihere") (putStrLn "Test passed")
    assert (mixString "xxxx" "There" == "xTxhxexre") (putStrLn "Test passed")
    assert (mixString "abc" "xyz" == "axbycz") (putStrLn "Test passed")
    assert (mixString "Hi" "There" == "HTihere") (putStrLn "Test passed")
    assert (mixString "xxxx" "There" == "xTxhxexre") (putStrLn "Test passed")

