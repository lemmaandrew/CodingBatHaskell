{-From https://codingbat.com/prob/p186672
Given an array of ints, return true if every element is a 1 or a 4.
-}
import Control.Exception (assert)


only14 :: [Int] -> Boolean
only14 nums = undefined

main = do
    assert (only14 [1,4,1,4] == true) (putStrLn "Test passed")
    assert (only14 [1,4,2,4] == false) (putStrLn "Test passed")
    assert (only14 [1,1] == true) (putStrLn "Test passed")
    assert (only14 [1,4,1,4] == true) (putStrLn "Test passed")
    assert (only14 [1,4,2,4] == false) (putStrLn "Test passed")
    assert (only14 [1,1] == true) (putStrLn "Test passed")

