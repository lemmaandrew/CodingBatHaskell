{-From https://codingbat.com/prob/p185204
Given an array of ints, is it possible to divide the ints into two groups, so that the
sums of the two groups are the same. Every int must be in one group or the other. Write
a recursive helper method that takes whatever arguments you like, and make the initial
call to your recursive helper from splitArray(). (No loops needed.)
-}
import Control.Exception (assert)


splitArray :: [Int] -> Boolean
splitArray nums = undefined

main = do
    assert (splitArray [2,2] == true) (putStrLn "Test passed")
    assert (splitArray [2,3] == false) (putStrLn "Test passed")
    assert (splitArray [5,2,3] == true) (putStrLn "Test passed")
    assert (splitArray [2,2] == true) (putStrLn "Test passed")
    assert (splitArray [2,3] == false) (putStrLn "Test passed")
    assert (splitArray [5,2,3] == true) (putStrLn "Test passed")

