{-From https://codingbat.com/prob/p199368
Given an array of ints, is it possible to choose a group of some of the ints, beginning
at the start index, such that the group sums to the given target? However, with the additional
constraint that all 6's must be chosen. (No loops needed.)
-}
import Control.Exception (assert)


groupSum6 :: Int -> [Int] -> Int -> Bool
groupSum6 start nums target = undefined

main :: IO ()
main = do
    assert (groupSum6 0 [5,6,2] 8 == True) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 9 == False) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 7 == False) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 8 == True) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 9 == False) (putStrLn "Test passed")
    assert (groupSum6 0 [5,6,2] 7 == False) (putStrLn "Test passed")

