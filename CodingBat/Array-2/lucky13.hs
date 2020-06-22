{-From https://codingbat.com/prob/p194525
Given an array of ints, return true if the array contains no 1's and no 3's.
-}
import Control.Exception (assert)


lucky13 :: [Int] -> Bool
lucky13 nums = undefined

main :: IO ()
main = do
    assert (lucky13 [0,2,4] == True) (putStrLn "Test passed")
    assert (lucky13 [1,2,3] == False) (putStrLn "Test passed")
    assert (lucky13 [1,2,4] == False) (putStrLn "Test passed")
    assert (lucky13 [0,2,4] == True) (putStrLn "Test passed")
    assert (lucky13 [1,2,3] == False) (putStrLn "Test passed")
    assert (lucky13 [1,2,4] == False) (putStrLn "Test passed")

