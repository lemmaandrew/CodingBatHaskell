{-From https://codingbat.com/prob/p163932
Given a non-negative int n, return the sum of its digits recursively (no loops). Note
that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) by
10 removes the rightmost digit (126 / 10 is 12).
-}
import Control.Exception (assert)


sumDigits :: Int -> Int
sumDigits n = undefined

main :: IO ()
main = do
    assert (sumDigits 126 == 9) (putStrLn "Test passed")
    assert (sumDigits 49 == 13) (putStrLn "Test passed")
    assert (sumDigits 12 == 3) (putStrLn "Test passed")
    assert (sumDigits 126 == 9) (putStrLn "Test passed")
    assert (sumDigits 49 == 13) (putStrLn "Test passed")
    assert (sumDigits 12 == 3) (putStrLn "Test passed")

