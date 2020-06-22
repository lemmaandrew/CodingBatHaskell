{-From https://codingbat.com/prob/p136041
Given an array of ints, return true if the sequence of numbers 1, 2, 3 appears in the
array somewhere.
-}
import Control.Exception (assert)


array123 :: [Int] -> Bool
array123 nums = undefined

main :: IO ()
main = do
    assert (array123 [1,1,2,3,1] == True) (putStrLn "Test passed")
    assert (array123 [1,1,2,4,1] == False) (putStrLn "Test passed")
    assert (array123 [1,1,2,1,2,3] == True) (putStrLn "Test passed")
    assert (array123 [1,1,2,3,1] == True) (putStrLn "Test passed")
    assert (array123 [1,1,2,4,1] == False) (putStrLn "Test passed")
    assert (array123 [1,1,2,1,2,3] == True) (putStrLn "Test passed")

