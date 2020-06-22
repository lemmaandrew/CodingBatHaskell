{-From https://codingbat.com/prob/p175689
Given an int array length 2, return true if it does not contain a 2 or 3.
-}
import Control.Exception (assert)


no23 :: [Int] -> Bool
no23 nums = undefined

main :: IO ()
main = do
    assert (no23 [4,5] == True) (putStrLn "Test passed")
    assert (no23 [4,2] == False) (putStrLn "Test passed")
    assert (no23 [3,5] == False) (putStrLn "Test passed")
    assert (no23 [4,5] == True) (putStrLn "Test passed")
    assert (no23 [4,2] == False) (putStrLn "Test passed")
    assert (no23 [3,5] == False) (putStrLn "Test passed")

