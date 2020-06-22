{-From https://codingbat.com/prob/p191212
Given a positive int n, return true if it contains a 1 digit. Note: use % to get the
rightmost digit, and / to discard the rightmost digit.
-}
import Control.Exception (assert)


hasOne :: Int -> Bool
hasOne n = undefined

main :: IO ()
main = do
    assert (hasOne 10 == True) (putStrLn "Test passed")
    assert (hasOne 22 == False) (putStrLn "Test passed")
    assert (hasOne 220 == False) (putStrLn "Test passed")
    assert (hasOne 10 == True) (putStrLn "Test passed")
    assert (hasOne 22 == False) (putStrLn "Test passed")
    assert (hasOne 220 == False) (putStrLn "Test passed")

