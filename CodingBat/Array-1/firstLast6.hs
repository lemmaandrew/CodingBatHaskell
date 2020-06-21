{-From https://codingbat.com/prob/p185685
Given an array of ints, return true if 6 appears as either the first or last element
in the array. The array will be length 1 or more.
-}
import Control.Exception (assert)


firstLast6 :: [Int] -> Boolean
firstLast6 nums = undefined

main = do
    assert (firstLast6 [1,2,6] == true) (putStrLn "Test passed")
    assert (firstLast6 [6,1,2,3] == true) (putStrLn "Test passed")
    assert (firstLast6 [13,6,1,2,3] == false) (putStrLn "Test passed")
    assert (firstLast6 [1,2,6] == true) (putStrLn "Test passed")
    assert (firstLast6 [6,1,2,3] == true) (putStrLn "Test passed")
    assert (firstLast6 [13,6,1,2,3] == false) (putStrLn "Test passed")

