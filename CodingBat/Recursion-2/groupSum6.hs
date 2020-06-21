{-From https://codingbat.com/prob/p199368
Given an array of ints, is it possible to choose a group of some of the ints, beginning
at the start index, such that the group sums to the given target? However, with the additional
constraint that all 6's must be chosen. (No loops needed.)
-}
import Control.Exception (assert)


groupSum6 :: Int -> [Int] -> Int -> Boolean
groupSum6 start nums target = undefined

main = do
    assert (groupSum6 0 [5,6,2] 8 == true) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 9 == false) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 7 == false) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 8 == true) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 9 == false) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 7 == false) (putStrLn "Test passed")

