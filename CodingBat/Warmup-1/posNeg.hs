{-From https://codingbat.com/prob/p159227
Given 2 int values, return true if one is negative and one is positive. Except if the
parameter "negative" is true, then return true only if both are negative.
-}
import Control.Exception (assert)


posNeg :: Int -> Int -> Boolean -> Boolean
posNeg a b negative = undefined

main = do
    assert (posNeg 1 -1 false == true) (putStrLn "Test passed")
    assert (posNeg -1 1 false == true) (putStrLn "Test passed")
    assert (posNeg -4 -5 true == true) (putStrLn "Test passed")
    assert (posNeg 1 -1 false == true) (putStrLn "Test passed")
    assert (posNeg -1 1 false == true) (putStrLn "Test passed")
    assert (posNeg -4 -5 true == true) (putStrLn "Test passed")

