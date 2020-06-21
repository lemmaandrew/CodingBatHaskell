{-From https://codingbat.com/prob/p145365
Given an int array, return true if the array contains 2 twice, or 3 twice. The array
will be length 0, 1, or 2.
-}
import Control.Exception (assert)


double23 :: [Int] -> Boolean
double23 nums = undefined

main = do
    assert (double23 [2,2] == true) (putStrLn "Test passed")
    assert (double23 [3,3] == true) (putStrLn "Test passed")
    assert (double23 [2,3] == false) (putStrLn "Test passed")
    assert (double23 [2,2] == true) (putStrLn "Test passed")
    assert (double23 [3,3] == true) (putStrLn "Test passed")
    assert (double23 [2,3] == false) (putStrLn "Test passed")

