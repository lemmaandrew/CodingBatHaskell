{-From https://codingbat.com/prob/p108997
Given an array of ints, compute recursively if the array contains a 6. We'll use the
convention of considering only the part of the array that begins at the given index. In
this way, a recursive call can pass index+1 to move down the array. The initial call
will pass in index as 0.
-}
import Control.Exception (assert)


array6 :: [Int] -> Int -> Bool
array6 nums index = undefined

main :: IO ()
main = do
    assert (array6 [1,6,4] 0 == True) (putStrLn "Test passed")
    assert (array6 [1,4] 0 == False) (putStrLn "Test passed")
    assert (array6 [6] 0 == True) (putStrLn "Test passed")
    assert (array6 [1,6,4] 0 == True) (putStrLn "Test passed")
    assert (array6 [1,4] 0 == False) (putStrLn "Test passed")
    assert (array6 [6] 0 == True) (putStrLn "Test passed")

