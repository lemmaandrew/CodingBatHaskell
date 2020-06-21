{-From https://codingbat.com/prob/p121853
Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.
-}
import Control.Exception (assert)


has22 :: [Int] -> Boolean
has22 nums = undefined

main = do
    assert (has22 [1,2,2] == true) (putStrLn "Test passed")
    assert (has22 [1,2,1,2] == false) (putStrLn "Test passed")
    assert (has22 [2,1,2] == false) (putStrLn "Test passed")
    assert (has22 [1,2,2] == true) (putStrLn "Test passed")
    assert (has22 [1,2,1,2] == false) (putStrLn "Test passed")
    assert (has22 [2,1,2] == false) (putStrLn "Test passed")

