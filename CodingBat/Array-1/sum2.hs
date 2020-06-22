{-From https://codingbat.com/prob/p190968
Given an array of ints, return the sum of the first 2 elements in the array. If the
array length is less than 2, just sum up the elements that exist, returning 0 if the
array is length 0.
-}
import Control.Exception (assert)


sum2 :: [Int] -> Int
sum2 nums = undefined

main :: IO ()
main = do
    assert (sum2 [1,2,3] == 3) (putStrLn "Test passed")
    assert (sum2 [1,1] == 2) (putStrLn "Test passed")
    assert (sum2 [1,1,1,1] == 2) (putStrLn "Test passed")
    assert (sum2 [1,2,3] == 3) (putStrLn "Test passed")
    assert (sum2 [1,1] == 2) (putStrLn "Test passed")
    assert (sum2 [1,1,1,1] == 2) (putStrLn "Test passed")

