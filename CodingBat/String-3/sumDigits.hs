{-From https://codingbat.com/prob/p197890
Given a string, return the sum of the digits 0-9 that appear in the string, ignoring
all other characters. Return 0 if there are no digits in the string. (Note: Character.isDigit(char)
tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts
a string to an int.)
-}
import Control.Exception (assert)


sumDigits :: String -> Int
sumDigits str = undefined

main = do
    assert (sumDigits "aa1bc2d3" == 6) (putStrLn "Test passed")
    assert (sumDigits "aa11b33" == 8) (putStrLn "Test passed")
    assert (sumDigits "Chocolate" == 0) (putStrLn "Test passed")
    assert (sumDigits "aa1bc2d3" == 6) (putStrLn "Test passed")
    assert (sumDigits "aa11b33" == 8) (putStrLn "Test passed")
    assert (sumDigits "Chocolate" == 0) (putStrLn "Test passed")

