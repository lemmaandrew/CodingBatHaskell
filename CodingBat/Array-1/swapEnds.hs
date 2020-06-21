{-From https://codingbat.com/prob/p118044
Given an array of ints, swap the first and last elements in the array. Return the modified
array. The array length will be at least 1.
-}
import Control.Exception (assert)


swapEnds :: [Int] -> [Int]
swapEnds nums = undefined

main = do
    assert (swapEnds [1,2,3,4] == [4,2,3,1]) (putStrLn "Test passed")
    assert (swapEnds [1,2,3] == [3,2,1]) (putStrLn "Test passed")
    assert (swapEnds [8,6,7,9,5] == [5,6,7,9,8]) (putStrLn "Test passed")
    assert (swapEnds [1,2,3,4] == [4,2,3,1]) (putStrLn "Test passed")
    assert (swapEnds [1,2,3] == [3,2,1]) (putStrLn "Test passed")
    assert (swapEnds [8,6,7,9,5] == [5,6,7,9,8]) (putStrLn "Test passed")

