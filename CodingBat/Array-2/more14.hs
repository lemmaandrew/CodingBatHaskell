{-From https://codingbat.com/prob/p104627
Given an array of ints, return true if the number of 1's is greater than the number
of 4's
-}
import Control.Exception (assert)


more14 :: [Int] -> Bool
more14 nums = undefined

main :: IO ()
main = do
    assert (more14 [1,4,1] == True) (putStrLn "Test passed")
    assert (more14 [1,4,1,4] == False) (putStrLn "Test passed")
    assert (more14 [1,1] == True) (putStrLn "Test passed")
    assert (more14 [1,4,1] == True) (putStrLn "Test passed")
    assert (more14 [1,4,1,4] == False) (putStrLn "Test passed")
    assert (more14 [1,1] == True) (putStrLn "Test passed")

