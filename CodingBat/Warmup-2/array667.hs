{-From https://codingbat.com/prob/p110019
Given an array of ints, return the number of times that two 6's are next to each other
in the array. Also count instances where the second "6" is actually a 7.
-}
import Control.Exception (assert)


array667 :: [Int] -> Int
array667 nums = undefined

main :: IO ()
main = do
    assert (array667 [6,6,2] == 1) (putStrLn "Test passed")
    assert (array667 [6,6,2,6] == 1) (putStrLn "Test passed")
    assert (array667 [6,7,2,6] == 1) (putStrLn "Test passed")
    assert (array667 [6,6,2] == 1) (putStrLn "Test passed")
    assert (array667 [6,6,2,6] == 1) (putStrLn "Test passed")
    assert (array667 [6,7,2,6] == 1) (putStrLn "Test passed")

