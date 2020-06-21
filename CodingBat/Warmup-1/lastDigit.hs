{-From https://codingbat.com/prob/p125339
Given two non-negative int values, return true if they have the same last digit, such
as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is
7.
-}
import Control.Exception (assert)


lastDigit :: Int -> Int -> Boolean
lastDigit a b = undefined

main = do
    assert (lastDigit 7 17 == true) (putStrLn "Test passed")
    assert (lastDigit 6 17 == false) (putStrLn "Test passed")
    assert (lastDigit 3 113 == true) (putStrLn "Test passed")
    assert (lastDigit 7 17 == true) (putStrLn "Test passed")
    assert (lastDigit 6 17 == false) (putStrLn "Test passed")
    assert (lastDigit 3 113 == true) (putStrLn "Test passed")

