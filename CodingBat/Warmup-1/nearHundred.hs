{-From https://codingbat.com/prob/p184004
Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes
the absolute value of a number.
-}
import Control.Exception (assert)


nearHundred :: Int -> Bool
nearHundred n = undefined

main :: IO ()
main = do
    assert (nearHundred 93 == True) (putStrLn "Test passed")
    assert (nearHundred 90 == True) (putStrLn "Test passed")
    assert (nearHundred 89 == False) (putStrLn "Test passed")
    assert (nearHundred 93 == True) (putStrLn "Test passed")
    assert (nearHundred 90 == True) (putStrLn "Test passed")
    assert (nearHundred 89 == False) (putStrLn "Test passed")

