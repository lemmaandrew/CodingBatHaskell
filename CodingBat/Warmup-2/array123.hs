{-From https://codingbat.com/prob/p136041
Given an array of ints, return true if the sequence of numbers 1, 2, 3 appears in the
array somewhere.
-}
import Control.Exception (assert)


array123 :: [Int] -> Boolean
array123 nums = undefined

main = do
    assert (array123 [1,1,2,3,1] == true) (putStrLn "Test passed")
    assert (array123 [1,1,2,4,1] == false) (putStrLn "Test passed")
    assert (array123 [1,1,2,1,2,3] == true) (putStrLn "Test passed")
    assert (array123 [1,1,2,3,1] == true) (putStrLn "Test passed")
    assert (array123 [1,1,2,4,1] == false) (putStrLn "Test passed")
    assert (array123 [1,1,2,1,2,3] == true) (putStrLn "Test passed")

