{-From https://codingbat.com/prob/p171022
Given an int array length 2, return true if it contains a 2 or a 3.
-}
import Control.Exception (assert)


has23 :: [Int] -> Boolean
has23 nums = undefined

main = do
    assert (has23 [2,5] == true) (putStrLn "Test passed")
    assert (has23 [4,3] == true) (putStrLn "Test passed")
    assert (has23 [4,5] == false) (putStrLn "Test passed")
    assert (has23 [2,5] == true) (putStrLn "Test passed")
    assert (has23 [4,3] == true) (putStrLn "Test passed")
    assert (has23 [4,5] == false) (putStrLn "Test passed")

