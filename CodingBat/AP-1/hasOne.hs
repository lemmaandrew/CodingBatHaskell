{-From https://codingbat.com/prob/p191212
Given a positive int n, return true if it contains a 1 digit. Note: use % to get the
rightmost digit, and / to discard the rightmost digit.
-}
import Control.Exception (assert)


hasOne :: Int -> Boolean
hasOne n = undefined

main = do
    assert (hasOne 10 == true) (putStrLn "Test passed")
    assert (hasOne 22 == false) (putStrLn "Test passed")
    assert (hasOne 220 == false) (putStrLn "Test passed")
    assert (hasOne 10 == true) (putStrLn "Test passed")
    assert (hasOne 22 == false) (putStrLn "Test passed")
    assert (hasOne 220 == false) (putStrLn "Test passed")

