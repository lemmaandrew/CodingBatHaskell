{-From https://codingbat.com/prob/p101230
Given an array of ints, return a new array length 2 containing the first and last elements
from the original array. The original array will be length 1 or more.
-}
import Control.Exception (assert)


makeEnds :: [Int] -> [Int]
makeEnds nums = undefined

main = do
    assert (makeEnds [1,2,3] == [1,3]) (putStrLn "Test passed")
    assert (makeEnds [1,2,3,4] == [1,4]) (putStrLn "Test passed")
    assert (makeEnds [7,4,6,2] == [7,2]) (putStrLn "Test passed")
    assert (makeEnds [1,2,3] == [1,3]) (putStrLn "Test passed")
    assert (makeEnds [1,2,3,4] == [1,4]) (putStrLn "Test passed")
    assert (makeEnds [7,4,6,2] == [7,2]) (putStrLn "Test passed")

