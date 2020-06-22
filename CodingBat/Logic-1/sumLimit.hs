{-From https://codingbat.com/prob/p118077
Given 2 non-negative ints, a and b, return their sum, so long as the sum has the same
number of digits as a. If the sum has more digits than a, just return a without b.
(Note: one way to compute the number of digits of a non-negative int n is to convert
it to a string with String.valueOf(n) and then check the length of the string.)
-}
import Control.Exception (assert)


sumLimit :: Int -> Int -> Int
sumLimit a b = undefined

main :: IO ()
main = do
    assert (sumLimit 2 3 == 5) (putStrLn "Test passed")
    assert (sumLimit 8 3 == 8) (putStrLn "Test passed")
    assert (sumLimit 8 1 == 9) (putStrLn "Test passed")
    assert (sumLimit 2 3 == 5) (putStrLn "Test passed")
    assert (sumLimit 8 3 == 8) (putStrLn "Test passed")
    assert (sumLimit 8 1 == 9) (putStrLn "Test passed")

