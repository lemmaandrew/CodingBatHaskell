{-From https://codingbat.com/prob/p137188
Given an int array, return a new array with double the length where its last element
is the same as the original array, and all the other elements are 0. The original array
will be length 1 or more. Note: by default, a new int array contains all 0's.
-}
import Control.Exception (assert)


makeLast :: [Int] -> [Int]
makeLast nums = undefined

main = do
    assert (makeLast [4,5,6] == [0,0,0,0,0,6]) (putStrLn "Test passed")
    assert (makeLast [1,2] == [0,0,0,2]) (putStrLn "Test passed")
    assert (makeLast [3] == [0,3]) (putStrLn "Test passed")
    assert (makeLast [4,5,6] == [0,0,0,0,0,6]) (putStrLn "Test passed")
    assert (makeLast [1,2] == [0,0,0,2]) (putStrLn "Test passed")
    assert (makeLast [3] == [0,3]) (putStrLn "Test passed")

