{-From https://codingbat.com/prob/p120347
Given an int array length 3, if there is a 2 in the array immediately followed by a
3, set the 3 element to 0. Return the changed array.
-}
import Control.Exception (assert)


fix23 :: [Int] -> [Int]
fix23 nums = undefined

main = do
    assert (fix23 [1,2,3] == [1,2,0]) (putStrLn "Test passed")
    assert (fix23 [2,3,5] == [2,0,5]) (putStrLn "Test passed")
    assert (fix23 [1,2,1] == [1,2,1]) (putStrLn "Test passed")
    assert (fix23 [1,2,3] == [1,2,0]) (putStrLn "Test passed")
    assert (fix23 [2,3,5] == [2,0,5]) (putStrLn "Test passed")
    assert (fix23 [1,2,1] == [1,2,1]) (putStrLn "Test passed")

