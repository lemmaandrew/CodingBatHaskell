{-From https://codingbat.com/prob/p121193
Given a string, return the sum of the numbers appearing in the string, ignoring all other
characters. A number is a series of 1 or more digit chars in a row. (Note: Character.isDigit(char)
tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts
a string to an int.)
-}
import Control.Exception (assert)


sumNumbers :: String -> Int
sumNumbers str = undefined

main :: IO ()
main = do
    assert (sumNumbers "abc123xyz" == 123) (putStrLn "Test passed")
    assert (sumNumbers "aa11b33" == 44) (putStrLn "Test passed")
    assert (sumNumbers "711" == 18) (putStrLn "Test passed")
    assert (sumNumbers "abc123xyz" == 123) (putStrLn "Test passed")
    assert (sumNumbers "aa11b33" == 44) (putStrLn "Test passed")
    assert (sumNumbers "711" == 18) (putStrLn "Test passed")

