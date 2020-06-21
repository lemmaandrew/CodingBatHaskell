{-From https://codingbat.com/prob/p137742
The number 6 is a truly great number. Given two int values, a and b, return true if
either one is 6. Or if their sum or difference is 6. Note: the function Math.abs(num)
computes the absolute value of a number.
-}
import Control.Exception (assert)


love6 :: Int -> Int -> Boolean
love6 a b = undefined

main = do
    assert (love6 6 4 == true) (putStrLn "Test passed")
    assert (love6 4 5 == false) (putStrLn "Test passed")
    assert (love6 1 5 == true) (putStrLn "Test passed")
    assert (love6 6 4 == true) (putStrLn "Test passed")
    assert (love6 4 5 == false) (putStrLn "Test passed")
    assert (love6 1 5 == true) (putStrLn "Test passed")

