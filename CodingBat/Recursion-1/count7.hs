{-From https://codingbat.com/prob/p101409
Given a non-negative int n, return the count of the occurrences of 7 as a digit, so
for example 717 yields 2. (no loops). Note that mod (%) by 10 yields the rightmost digit
(126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).
-}
import Control.Exception (assert)


count7 :: Int -> Int
count7 n = undefined

main :: IO ()
main = do
    assert (count7 717 == 2) (putStrLn "Test passed")
    assert (count7 7 == 1) (putStrLn "Test passed")
    assert (count7 123 == 0) (putStrLn "Test passed")
    assert (count7 717 == 2) (putStrLn "Test passed")
    assert (count7 7 == 1) (putStrLn "Test passed")
    assert (count7 123 == 0) (putStrLn "Test passed")

