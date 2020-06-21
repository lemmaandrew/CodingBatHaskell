{-From https://codingbat.com/prob/p192383
Given a non-negative int n, compute recursively (no loops) the count of the occurrences
of 8 as a digit, except that an 8 with another 8 immediately to its left counts double,
so 8818 yields 4. Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).
-}
import Control.Exception (assert)


count8 :: Int -> Int
count8 n = undefined

main = do
    assert (count8 8 == 1) (putStrLn "Test passed")
    assert (count8 818 == 2) (putStrLn "Test passed")
    assert (count8 8818 == 4) (putStrLn "Test passed")
    assert (count8 8 == 1) (putStrLn "Test passed")
    assert (count8 818 == 2) (putStrLn "Test passed")
    assert (count8 8818 == 4) (putStrLn "Test passed")

