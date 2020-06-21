{-From https://codingbat.com/prob/p112409
Given an array of ints length 3, return a new array with the elements in reverse order,
so {1, 2, 3} becomes {3, 2, 1}.
-}
import Control.Exception (assert)


reverse3 :: [Int] -> [Int]
reverse3 nums = undefined

main = do
    assert (reverse3 [1,2,3] == [3,2,1]) (putStrLn "Test passed")
    assert (reverse3 [5,11,9] == [9,11,5]) (putStrLn "Test passed")
    assert (reverse3 [7,0,0] == [0,0,7]) (putStrLn "Test passed")
    assert (reverse3 [1,2,3] == [3,2,1]) (putStrLn "Test passed")
    assert (reverse3 [5,11,9] == [9,11,5]) (putStrLn "Test passed")
    assert (reverse3 [7,0,0] == [0,0,7]) (putStrLn "Test passed")

