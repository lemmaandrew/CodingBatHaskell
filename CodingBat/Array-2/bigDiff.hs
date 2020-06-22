{-From https://codingbat.com/prob/p196640
Given an array length 1 or more of ints, return the difference between the largest and
smallest values in the array. Note: the built-in Math.min(v1, v2) and Math.max(v1, v2) methods
   return the smaller or larger of two values.
-}
import Control.Exception (assert)


bigDiff :: [Int] -> Int
bigDiff nums = undefined

main :: IO ()
main = do
    assert (bigDiff [10,3,5,6] == 7) (putStrLn "Test passed")
    assert (bigDiff [7,2,10,9] == 8) (putStrLn "Test passed")
    assert (bigDiff [2,10,7,2] == 8) (putStrLn "Test passed")
    assert (bigDiff [10,3,5,6] == 7) (putStrLn "Test passed")
    assert (bigDiff [7,2,10,9] == 8) (putStrLn "Test passed")
    assert (bigDiff [2,10,7,2] == 8) (putStrLn "Test passed")

