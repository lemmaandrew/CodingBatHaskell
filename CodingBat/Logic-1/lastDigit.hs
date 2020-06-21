{-From https://codingbat.com/prob/p169213
Given three ints, a b c, return true if two or more of them have the same rightmost
digit. The ints are non-negative. Note: the % "mod" operator computes the remainder, e.g.
17 % 10 is 7.
-}
import Control.Exception (assert)


lastDigit :: Int -> Int -> Int -> Boolean
lastDigit a b c = undefined

main = do
    assert (lastDigit 23 19 13 == true) (putStrLn "Test passed")
    assert (lastDigit 23 19 12 == false) (putStrLn "Test passed")
    assert (lastDigit 23 19 3 == true) (putStrLn "Test passed")
    assert (lastDigit 23 19 13 == true) (putStrLn "Test passed")
    assert (lastDigit 23 19 12 == false) (putStrLn "Test passed")
    assert (lastDigit 23 19 3 == true) (putStrLn "Test passed")

