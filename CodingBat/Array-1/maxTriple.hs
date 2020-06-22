{-From https://codingbat.com/prob/p185176
Given an array of ints of odd length, look at the first, last, and middle values in
the array and return the largest. The array length will be a least 1.
-}
import Control.Exception (assert)


maxTriple :: [Int] -> Int
maxTriple nums = undefined

main :: IO ()
main = do
    assert (maxTriple [1,2,3] == 3) (putStrLn "Test passed")
    assert (maxTriple [1,5,3] == 5) (putStrLn "Test passed")
    assert (maxTriple [5,2,3] == 5) (putStrLn "Test passed")
    assert (maxTriple [1,2,3] == 3) (putStrLn "Test passed")
    assert (maxTriple [1,5,3] == 5) (putStrLn "Test passed")
    assert (maxTriple [5,2,3] == 5) (putStrLn "Test passed")

