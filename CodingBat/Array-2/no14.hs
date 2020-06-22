{-From https://codingbat.com/prob/p136648
Given an array of ints, return true if it contains no 1's or it contains no 4's.
-}
import Control.Exception (assert)


no14 :: [Int] -> Bool
no14 nums = undefined

main :: IO ()
main = do
    assert (no14 [1,2,3] == True) (putStrLn "Test passed")
    assert (no14 [1,2,3,4] == False) (putStrLn "Test passed")
    assert (no14 [2,3,4] == True) (putStrLn "Test passed")
    assert (no14 [1,2,3] == True) (putStrLn "Test passed")
    assert (no14 [1,2,3,4] == False) (putStrLn "Test passed")
    assert (no14 [2,3,4] == True) (putStrLn "Test passed")

