{-From https://codingbat.com/prob/p173469
Given an array of ints, compute recursively if the array contains somewhere a value followed
in the array by that value times 10. We'll use the convention of considering only the
part of the array that begins at the given index. In this way, a recursive call can
pass index+1 to move down the array. The initial call will pass in index as 0.
-}
import Control.Exception (assert)


array220 :: [Int] -> Int -> Boolean
array220 nums index = undefined

main = do
    assert (array220 [1,2,20] 0 == true) (putStrLn "Test passed")
    assert (array220 [3,30] 0 == true) (putStrLn "Test passed")
    assert (array220 [3] 0 == false) (putStrLn "Test passed")
    assert (array220 [1,2,20] 0 == true) (putStrLn "Test passed")
    assert (array220 [3,30] 0 == true) (putStrLn "Test passed")
    assert (array220 [3] 0 == false) (putStrLn "Test passed")

