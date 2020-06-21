{-From https://codingbat.com/prob/p182873
Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
-}
import Control.Exception (assert)


makes10 :: Int -> Int -> Boolean
makes10 a b = undefined

main = do
    assert (makes10 9 10 == true) (putStrLn "Test passed")
    assert (makes10 9 9 == false) (putStrLn "Test passed")
    assert (makes10 1 9 == true) (putStrLn "Test passed")
    assert (makes10 9 10 == true) (putStrLn "Test passed")
    assert (makes10 9 9 == false) (putStrLn "Test passed")
    assert (makes10 1 9 == true) (putStrLn "Test passed")

