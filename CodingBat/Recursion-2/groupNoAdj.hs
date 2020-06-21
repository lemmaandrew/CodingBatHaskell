{-From https://codingbat.com/prob/p169605
Given an array of ints, is it possible to choose a group of some of the ints, such
that the group sums to the given target with this additional constraint: If a value in
the array is chosen to be in the group, the value immediately following it in the array
must not be chosen. (No loops needed.)
-}
import Control.Exception (assert)


groupNoAdj :: Int -> [Int] -> Int -> Boolean
groupNoAdj start nums target = undefined

main = do
    assert (groupNoAdj 0 [2,5,10,4] 12 == true) (putStrLn "Test passed")
    assert (groupNoAdj 0 [2,5,10,4] 14 == false) (putStrLn "Test passed")
    assert (groupNoAdj 0 [2,5,10,4] 7 == false) (putStrLn "Test passed")
    assert (groupNoAdj 0 [2,5,10,4] 12 == true) (putStrLn "Test passed")
    assert (groupNoAdj 0 [2,5,10,4] 14 == false) (putStrLn "Test passed")
    assert (groupNoAdj 0 [2,5,10,4] 7 == false) (putStrLn "Test passed")

