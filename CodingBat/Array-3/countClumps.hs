{-From https://codingbat.com/prob/p193817
Say that a "clump" in an array is a series of 2 or more adjacent elements of the same
value. Return the number of clumps in the given array.
-}
import Control.Exception (assert)


countClumps :: [Int] -> Int
countClumps nums = undefined

main = do
    assert (countClumps [1,2,2,3,4,4] == 2) (putStrLn "Test passed")
    assert (countClumps [1,1,2,1,1] == 2) (putStrLn "Test passed")
    assert (countClumps [1,1,1,1,1] == 1) (putStrLn "Test passed")
    assert (countClumps [1,2,2,3,4,4] == 2) (putStrLn "Test passed")
    assert (countClumps [1,1,2,1,1] == 2) (putStrLn "Test passed")
    assert (countClumps [1,1,1,1,1] == 1) (putStrLn "Test passed")

