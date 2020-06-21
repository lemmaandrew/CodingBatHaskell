{-From https://codingbat.com/prob/p175689
Given an int array length 2, return true if it does not contain a 2 or 3.
-}
import Control.Exception (assert)


no23 :: [Int] -> Boolean
no23 nums = undefined

main = do
    assert (no23 [4,5] == true) (putStrLn "Test passed")
    assert (no23 [4,2] == false) (putStrLn "Test passed")
    assert (no23 [3,5] == false) (putStrLn "Test passed")
    assert (no23 [4,5] == true) (putStrLn "Test passed")
    assert (no23 [4,2] == false) (putStrLn "Test passed")
    assert (no23 [3,5] == false) (putStrLn "Test passed")

