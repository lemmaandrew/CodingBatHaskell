{-From https://codingbat.com/prob/p153748
Given two ints, each in the range 10..99, return true if there is a digit that appears
in both numbers, such as the 2 in 12 and 23. (Note: division, e.g. n/10, gives the left
digit while the % "mod" n%10 gives the right digit.)
-}
import Control.Exception (assert)


shareDigit :: Int -> Int -> Boolean
shareDigit a b = undefined

main = do
    assert (shareDigit 12 23 == true) (putStrLn "Test passed")
    assert (shareDigit 12 43 == false) (putStrLn "Test passed")
    assert (shareDigit 12 44 == false) (putStrLn "Test passed")
    assert (shareDigit 12 23 == true) (putStrLn "Test passed")
    assert (shareDigit 12 43 == false) (putStrLn "Test passed")
    assert (shareDigit 12 44 == false) (putStrLn "Test passed")

