{-From https://codingbat.com/prob/p199612
Given an array of ints, return true if the sum of all the 2's in the array is exactly
8.
-}
import Control.Exception (assert)


sum28 :: [Int] -> Bool
sum28 nums = undefined

main :: IO ()
main = do
    assert (sum28 [2,3,2,2,4,2] == True) (putStrLn "Test passed")
    assert (sum28 [2,3,2,2,4,2,2] == False) (putStrLn "Test passed")
    assert (sum28 [1,2,3,4] == False) (putStrLn "Test passed")
    assert (sum28 [2,3,2,2,4,2] == True) (putStrLn "Test passed")
    assert (sum28 [2,3,2,2,4,2,2] == False) (putStrLn "Test passed")
    assert (sum28 [1,2,3,4] == False) (putStrLn "Test passed")

