{-From https://codingbat.com/prob/p134300
Return true if the group of N numbers at the start and end of the array are the same.
For example, with {5, 6, 45, 99, 13, 5, 6}, the ends are the same for n=0 and n=2,
and false for n=1 and n=3. You may assume that n is in the range 0..nums.length inclusive.
-}
import Control.Exception (assert)


sameEnds :: [Int] -> Int -> Boolean
sameEnds nums len = undefined

main = do
    assert (sameEnds [5,6,45,99,13,5,6] 1 == false) (putStrLn "Test passed")
    assert (sameEnds [5,6,45,99,13,5,6] 2 == true) (putStrLn "Test passed")
    assert (sameEnds [5,6,45,99,13,5,6] 3 == false) (putStrLn "Test passed")
    assert (sameEnds [5,6,45,99,13,5,6] 1 == false) (putStrLn "Test passed")
    assert (sameEnds [5,6,45,99,13,5,6] 2 == true) (putStrLn "Test passed")
    assert (sameEnds [5,6,45,99,13,5,6] 3 == false) (putStrLn "Test passed")

