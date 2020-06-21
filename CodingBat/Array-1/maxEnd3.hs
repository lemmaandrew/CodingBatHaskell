{-From https://codingbat.com/prob/p146256
Given an array of ints length 3, figure out which is larger, the first or last element
in the array, and set all the other elements to be that value. Return the changed array.
-}
import Control.Exception (assert)


maxEnd3 :: [Int] -> [Int]
maxEnd3 nums = undefined

main = do
    assert (maxEnd3 [1,2,3] == [3,3,3]) (putStrLn "Test passed")
    assert (maxEnd3 [11,5,9] == [11,11,11]) (putStrLn "Test passed")
    assert (maxEnd3 [2,11,3] == [3,3,3]) (putStrLn "Test passed")
    assert (maxEnd3 [1,2,3] == [3,3,3]) (putStrLn "Test passed")
    assert (maxEnd3 [11,5,9] == [11,11,11]) (putStrLn "Test passed")
    assert (maxEnd3 [2,11,3] == [3,3,3]) (putStrLn "Test passed")

