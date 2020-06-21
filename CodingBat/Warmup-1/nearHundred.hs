{-From https://codingbat.com/prob/p184004
Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes
the absolute value of a number.
-}
import Control.Exception (assert)


nearHundred :: Int -> Boolean
nearHundred n = undefined

main = do
    assert (nearHundred 93 == true) (putStrLn "Test passed")
    assert (nearHundred 90 == true) (putStrLn "Test passed")
    assert (nearHundred 89 == false) (putStrLn "Test passed")
    assert (nearHundred 93 == true) (putStrLn "Test passed")
    assert (nearHundred 90 == true) (putStrLn "Test passed")
    assert (nearHundred 89 == false) (putStrLn "Test passed")

