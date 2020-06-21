{-From https://codingbat.com/prob/p138907
Given an array of ints, is it possible to choose a group of some of the ints, such
that the group sums to the given target with these additional constraints: all multiples
of 5 in the array must be included in the group. If the value immediately following a
multiple of 5 is 1, it must not be chosen. (No loops needed.)
-}
import Control.Exception (assert)


groupSum5 :: Int -> [Int] -> Int -> Boolean
groupSum5 start nums target = undefined

main = do
    assert (groupSum5 0 [2,5,10,4] 19 == true) (putStrLn "Test passed")
    assert (groupSum5 0 [2,5,10,4] 17 == true) (putStrLn "Test passed")
    assert (groupSum5 0 [2,5,10,4] 12 == false) (putStrLn "Test passed")
    assert (groupSum5 0 [2,5,10,4] 19 == true) (putStrLn "Test passed")
    assert (groupSum5 0 [2,5,10,4] 17 == true) (putStrLn "Test passed")
    assert (groupSum5 0 [2,5,10,4] 12 == false) (putStrLn "Test passed")

