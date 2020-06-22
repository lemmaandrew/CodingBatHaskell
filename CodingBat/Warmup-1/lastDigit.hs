{-From https://codingbat.com/prob/p125339
Given two non-negative int values, return true if they have the same last digit, such
as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is
7.
-}
import Control.Exception (assert)


lastDigit :: Int -> Int -> Bool
lastDigit a b = undefined

main :: IO ()
main = do
    assert (lastDigit 7 17 == True) (putStrLn "Test passed")
    assert (lastDigit 6 17 == False) (putStrLn "Test passed")
    assert (lastDigit 3 113 == True) (putStrLn "Test passed")
    assert (lastDigit 7 17 == True) (putStrLn "Test passed")
    assert (lastDigit 6 17 == False) (putStrLn "Test passed")
    assert (lastDigit 3 113 == True) (putStrLn "Test passed")

