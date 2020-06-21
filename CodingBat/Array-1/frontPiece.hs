{-From https://codingbat.com/prob/p142455
Given an int array of any length, return a new array of its first 2 elements. If the
array is smaller than length 2, use whatever elements are present.
-}
import Control.Exception (assert)


frontPiece :: [Int] -> [Int]
frontPiece nums = undefined

main = do
    assert (frontPiece [1,2,3] == [1,2]) (putStrLn "Test passed")
    assert (frontPiece [1,2] == [1,2]) (putStrLn "Test passed")
    assert (frontPiece [1] == [1]) (putStrLn "Test passed")
    assert (frontPiece [1,2,3] == [1,2]) (putStrLn "Test passed")
    assert (frontPiece [1,2] == [1,2]) (putStrLn "Test passed")
    assert (frontPiece [1] == [1]) (putStrLn "Test passed")

