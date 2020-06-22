{-From https://codingbat.com/prob/p175763
Given an array of ints length 3, return the sum of all the elements.
-}
import Control.Exception (assert)


sum3 :: [Int] -> Int
sum3 nums = undefined

main :: IO ()
main = do
    assert (sum3 [1,2,3] == 6) (putStrLn "Test passed")
    assert (sum3 [5,11,2] == 18) (putStrLn "Test passed")
    assert (sum3 [7,0,0] == 7) (putStrLn "Test passed")
    assert (sum3 [1,2,3] == 6) (putStrLn "Test passed")
    assert (sum3 [5,11,2] == 18) (putStrLn "Test passed")
    assert (sum3 [7,0,0] == 7) (putStrLn "Test passed")

