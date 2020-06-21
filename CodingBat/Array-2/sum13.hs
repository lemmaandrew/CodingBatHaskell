{-From https://codingbat.com/prob/p127384
Return the sum of the numbers in the array, returning 0 for an empty array. Except the
number 13 is very unlucky, so it does not count and numbers that come immediately after
a 13 also do not count.
-}
import Control.Exception (assert)


sum13 :: [Int] -> Int
sum13 nums = undefined

main = do
    assert (sum13 [1,2,2,1] == 6) (putStrLn "Test passed")
    assert (sum13 [1,1] == 2) (putStrLn "Test passed")
    assert (sum13 [1,2,2,1,13] == 6) (putStrLn "Test passed")
    assert (sum13 [1,2,2,1] == 6) (putStrLn "Test passed")
    assert (sum13 [1,1] == 2) (putStrLn "Test passed")
    assert (sum13 [1,2,2,1,13] == 6) (putStrLn "Test passed")

