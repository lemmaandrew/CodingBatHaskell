{-From https://codingbat.com/prob/p136648
Given an array of ints, return true if it contains no 1's or it contains no 4's.
-}
import Control.Exception (assert)


no14 :: [Int] -> Boolean
no14 nums = undefined

main = do
    assert (no14 [1,2,3] == true) (putStrLn "Test passed")
    assert (no14 [1,2,3,4] == false) (putStrLn "Test passed")
    assert (no14 [2,3,4] == true) (putStrLn "Test passed")
    assert (no14 [1,2,3] == true) (putStrLn "Test passed")
    assert (no14 [1,2,3,4] == false) (putStrLn "Test passed")
    assert (no14 [2,3,4] == true) (putStrLn "Test passed")

