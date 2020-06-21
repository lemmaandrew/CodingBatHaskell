{-From https://codingbat.com/prob/p184031
Given an array of ints, return the number of 9's in the array.
-}
import Control.Exception (assert)


arrayCount9 :: [Int] -> Int
arrayCount9 nums = undefined

main = do
    assert (arrayCount9 [1,2,9] == 1) (putStrLn "Test passed")
    assert (arrayCount9 [1,9,9] == 2) (putStrLn "Test passed")
    assert (arrayCount9 [1,9,9,3,9] == 3) (putStrLn "Test passed")
    assert (arrayCount9 [1,2,9] == 1) (putStrLn "Test passed")
    assert (arrayCount9 [1,9,9] == 2) (putStrLn "Test passed")
    assert (arrayCount9 [1,9,9,3,9] == 3) (putStrLn "Test passed")

