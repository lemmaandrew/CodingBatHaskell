{-From https://codingbat.com/prob/p118976
Given an array of ints, return true if the array is length 1 or more, and the first
element and the last element are equal.
-}
import Control.Exception (assert)


sameFirstLast :: [Int] -> Boolean
sameFirstLast nums = undefined

main = do
    assert (sameFirstLast [1,2,3] == false) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3,1] == true) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,1] == true) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3] == false) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,3,1] == true) (putStrLn "Test passed")
    assert (sameFirstLast [1,2,1] == true) (putStrLn "Test passed")

