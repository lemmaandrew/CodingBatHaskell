{-From https://codingbat.com/prob/p100246
Given a non-empty array of ints, return a new array containing the elements from the original
array that come before the first 4 in the original array. The original array will contain
at least one 4. Note that it is valid in java to create an array of length 0.
-}
import Control.Exception (assert)


pre4 :: [Int] -> [Int]
pre4 nums = undefined

main :: IO ()
main = do
    assert (pre4 [1,2,4,1] == [1,2]) (putStrLn "Test passed")
    assert (pre4 [3,1,4] == [3,1]) (putStrLn "Test passed")
    assert (pre4 [1,4,4] == [1]) (putStrLn "Test passed")
    assert (pre4 [1,2,4,1] == [1,2]) (putStrLn "Test passed")
    assert (pre4 [3,1,4] == [3,1]) (putStrLn "Test passed")
    assert (pre4 [1,4,4] == [1]) (putStrLn "Test passed")

