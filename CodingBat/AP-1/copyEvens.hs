{-From https://codingbat.com/prob/p134174
Given an array of positive ints, return a new array of length "count" containing the first
even numbers from the original array. The original array will contain at least "count"
even numbers.
-}
import Control.Exception (assert)


copyEvens :: [Int] -> Int -> [Int]
copyEvens nums count = undefined

main = do
    assert (copyEvens [3,2,4,5,8] 2 == [2,4]) (putStrLn "Test passed")
    assert (copyEvens [3,2,4,5,8] 3 == [2,4,8]) (putStrLn "Test passed")
    assert (copyEvens [6,1,2,4,5,8] 3 == [6,2,4]) (putStrLn "Test passed")
    assert (copyEvens [3,2,4,5,8] 2 == [2,4]) (putStrLn "Test passed")
    assert (copyEvens [3,2,4,5,8] 3 == [2,4,8]) (putStrLn "Test passed")
    assert (copyEvens [6,1,2,4,5,8] 3 == [6,2,4]) (putStrLn "Test passed")

