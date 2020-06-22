{-From https://codingbat.com/prob/p118976
Given an array of ints, return true if the array is length 1 or more, and the first
element and the last element are equal.
-}
import Control.Exception (assert)


sameFirstLast :: [Int] -> Bool
sameFirstLast nums = undefined

main :: IO ()
main = do
    assert (sameFirstLast [1,2,3] == False) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3,1] == True) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,1] == True) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3] == False) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3,1] == True) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,1] == True) (putStrLn "Test passed")

