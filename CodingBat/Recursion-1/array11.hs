{-From https://codingbat.com/prob/p135988
Given an array of ints, compute recursively the number of times that the value 11 appears
in the array. We'll use the convention of considering only the part of the array that
begins at the given index. In this way, a recursive call can pass index+1 to move down
the array. The initial call will pass in index as 0.
-}
import Control.Exception (assert)


array11 :: [Int] -> Int -> Int
array11 nums index = undefined

main :: IO ()
main = do
    assert (array11 [1,2,11] 0 == 1) (putStrLn "Test passed")
    assert (array11 [11,11] 0 == 2) (putStrLn "Test passed")
    assert (array11 [1,2,3,4] 0 == 0) (putStrLn "Test passed")
    assert (array11 [1,2,11] 0 == 1) (putStrLn "Test passed")
    assert (array11 [11,11] 0 == 2) (putStrLn "Test passed")
    assert (array11 [1,2,3,4] 0 == 0) (putStrLn "Test passed")

