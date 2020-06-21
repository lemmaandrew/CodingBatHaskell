{-From https://codingbat.com/prob/p111327
Return the sum of the numbers in the array, except ignore sections of numbers starting
with a 6 and extending to the next 7 (every 6 will be followed by at least one 7).
Return 0 for no numbers.
-}
import Control.Exception (assert)


sum67 :: [Int] -> Int
sum67 nums = undefined

main = do
    assert (sum67 [1,2,2] == 5) (putStrLn "Test passed")
    assert (sum67 [1,2,2,6,99,99,7] == 5) (putStrLn "Test passed")
    assert (sum67 [1,1,6,7,2] == 4) (putStrLn "Test passed")
    assert (sum67 [1,2,2] == 5) (putStrLn "Test passed")
    assert (sum67 [1,2,2,6,99,99,7] == 5) (putStrLn "Test passed")
    assert (sum67 [1,1,6,7,2] == 4) (putStrLn "Test passed")

