{-From https://codingbat.com/prob/p128270
Given 2 int arrays, a and b, of any length, return a new array with the first element
of each array. If either array is length 0, ignore that array.
-}
import Control.Exception (assert)


front11 :: [Int] -> [Int] -> [Int]
front11 a b = undefined

main = do
    assert (front11 [1,2,3] [7,9,8] == [1,7]) (putStrLn "Test passed")
    assert (front11 [1] [2] == [1,2]) (putStrLn "Test passed")
    assert (front11 [1,7] [] == [1]) (putStrLn "Test passed")
    assert (front11 [1,2,3] [7,9,8] == [1,7]) (putStrLn "Test passed")
    assert (front11 [1] [2] == [1,2]) (putStrLn "Test passed")
    assert (front11 [1,7] [] == [1]) (putStrLn "Test passed")

