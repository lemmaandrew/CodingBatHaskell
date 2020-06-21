{-From https://codingbat.com/prob/p154485
Given two int values, return their sum. Unless the two values are the same, then return
double their sum.
-}
import Control.Exception (assert)


sumDouble :: Int -> Int -> Int
sumDouble a b = undefined

main = do
    assert (sumDouble 1 2 == 3) (putStrLn "Test passed")
    assert (sumDouble 3 2 == 5) (putStrLn "Test passed")
    assert (sumDouble 2 2 == 8) (putStrLn "Test passed")
    assert (sumDouble 1 2 == 3) (putStrLn "Test passed")
    assert (sumDouble 3 2 == 5) (putStrLn "Test passed")
    assert (sumDouble 2 2 == 8) (putStrLn "Test passed")

