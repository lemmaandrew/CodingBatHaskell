{-From https://codingbat.com/prob/p154669
Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1.
Compute the result recursively (without loops).
-}
import Control.Exception (assert)


factorial :: Int -> Int
factorial n = undefined

main :: IO ()
main = do
    assert (factorial 1 == 1) (putStrLn "Test passed")
    assert (factorial 2 == 2) (putStrLn "Test passed")
    assert (factorial 3 == 6) (putStrLn "Test passed")
    assert (factorial 1 == 1) (putStrLn "Test passed")
    assert (factorial 2 == 2) (putStrLn "Test passed")
    assert (factorial 3 == 6) (putStrLn "Test passed")

