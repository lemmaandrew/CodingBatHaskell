{-From https://codingbat.com/prob/p171660
Given an array of ints, is it possible to divide the ints into two groups, so that the
sum of one group is a multiple of 10, and the sum of the other group is odd. Every
int must be in one group or the other. Write a recursive helper method that takes whatever
arguments you like, and make the initial call to your recursive helper from splitOdd10().
(No loops needed.)
-}
import Control.Exception (assert)


splitOdd10 :: [Int] -> Boolean
splitOdd10 nums = undefined

main = do
    assert (splitOdd10 [5,5,5] == true) (putStrLn "Test passed")
    assert (splitOdd10 [5,5,6] == false) (putStrLn "Test passed")
    assert (splitOdd10 [5,5,6,1] == true) (putStrLn "Test passed")
    assert (splitOdd10 [5,5,5] == true) (putStrLn "Test passed")
    assert (splitOdd10 [5,5,6] == false) (putStrLn "Test passed")
    assert (splitOdd10 [5,5,6,1] == true) (putStrLn "Test passed")

