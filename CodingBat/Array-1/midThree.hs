{-From https://codingbat.com/prob/p155713
Given an array of ints of odd length, return a new array length 3 containing the elements
from the middle of the array. The array length will be at least 3.
-}
import Control.Exception (assert)


midThree :: [Int] -> [Int]
midThree nums = undefined

main = do
    assert (midThree [1,2,3,4,5] == [2,3,4]) (putStrLn "Test passed")
    assert (midThree [8,6,7,5,3,0,9] == [7,5,3]) (putStrLn "Test passed")
    assert (midThree [1,2,3] == [1,2,3]) (putStrLn "Test passed")
    assert (midThree [1,2,3,4,5] == [2,3,4]) (putStrLn "Test passed")
    assert (midThree [8,6,7,5,3,0,9] == [7,5,3]) (putStrLn "Test passed")
    assert (midThree [1,2,3] == [1,2,3]) (putStrLn "Test passed")

