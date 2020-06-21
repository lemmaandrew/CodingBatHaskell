{-From https://codingbat.com/prob/p194525
Given an array of ints, return true if the array contains no 1's and no 3's.
-}
import Control.Exception (assert)


lucky13 :: [Int] -> Boolean
lucky13 nums = undefined

main = do
    assert (lucky13 [0,2,4] == true) (putStrLn "Test passed")
    assert (lucky13 [1,2,3] == false) (putStrLn "Test passed")
    assert (lucky13 [1,2,4] == false) (putStrLn "Test passed")
    assert (lucky13 [0,2,4] == true) (putStrLn "Test passed")
    assert (lucky13 [1,2,3] == false) (putStrLn "Test passed")
    assert (lucky13 [1,2,4] == false) (putStrLn "Test passed")

