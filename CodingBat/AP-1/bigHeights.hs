{-From https://codingbat.com/prob/p197710
(A variation on the sumHeights problem.) We have an array of heights, representing the
altitude along a walking trail. Given start/end indexes into the array, return the number
of "big" steps for a walk starting at the start index and ending at the end index. We'll
say that    step is big if it is 5 or more up or down. The start end end index will
both be valid indexes into the array with start <= end.
-}
import Control.Exception (assert)


bigHeights :: [Int] -> Int -> Int -> Int
bigHeights heights start end = undefined

main :: IO ()
main = do
    assert (bigHeights [5,3,6,7,2] 2 4 == 1) (putStrLn "Test passed")
    assert (bigHeights [5,3,6,7,2] 0 1 == 0) (putStrLn "Test passed")
    assert (bigHeights [5,3,6,7,2] 0 4 == 1) (putStrLn "Test passed")
    assert (bigHeights [5,3,6,7,2] 2 4 == 1) (putStrLn "Test passed")
    assert (bigHeights [5,3,6,7,2] 0 1 == 0) (putStrLn "Test passed")
    assert (bigHeights [5,3,6,7,2] 0 4 == 1) (putStrLn "Test passed")

