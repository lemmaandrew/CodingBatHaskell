{-From https://codingbat.com/prob/p159979
Given an array of ints, return true if the array contains either 3 even or 3 odd values
all next to each other.
-}
import Control.Exception (assert)


modThree :: [Int] -> Boolean
modThree nums = undefined

main = do
    assert (modThree [2,1,3,5] == true) (putStrLn "Test passed")
    assert (modThree [2,1,2,5] == false) (putStrLn "Test passed")
    assert (modThree [2,4,2,5] == true) (putStrLn "Test passed")
    assert (modThree [2,1,3,5] == true) (putStrLn "Test passed")
    assert (modThree [2,1,2,5] == false) (putStrLn "Test passed")
    assert (modThree [2,4,2,5] == true) (putStrLn "Test passed")

