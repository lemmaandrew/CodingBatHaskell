{-From https://codingbat.com/prob/p104627
Given an array of ints, return true if the number of 1's is greater than the number
of 4's
-}
import Control.Exception (assert)


more14 :: [Int] -> Boolean
more14 nums = undefined

main = do
    assert (more14 [1,4,1] == true) (putStrLn "Test passed")
    assert (more14 [1,4,1,4] == false) (putStrLn "Test passed")
    assert (more14 [1,1] == true) (putStrLn "Test passed")
    assert (more14 [1,4,1] == true) (putStrLn "Test passed")
    assert (more14 [1,4,1,4] == false) (putStrLn "Test passed")
    assert (more14 [1,1] == true) (putStrLn "Test passed")

