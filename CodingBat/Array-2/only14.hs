{-From https://codingbat.com/prob/p186672
Given an array of ints, return true if every element is a 1 or a 4.
-}
import Control.Exception (assert)


only14 :: [Int] -> Bool
only14 nums = undefined

main :: IO ()
main = do
    assert (only14 [1,4,1,4] == True) (putStrLn "Test passed")
    assert (only14 [1,4,2,4] == False) (putStrLn "Test passed")
    assert (only14 [1,1] == True) (putStrLn "Test passed")
    assert (only14 [1,4,1,4] == True) (putStrLn "Test passed")
    assert (only14 [1,4,2,4] == False) (putStrLn "Test passed")
    assert (only14 [1,1] == True) (putStrLn "Test passed")

