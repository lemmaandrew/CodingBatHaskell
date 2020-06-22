{-From https://codingbat.com/prob/p159227
Given 2 int values, return true if one is negative and one is positive. Except if the
parameter "negative" is true, then return true only if both are negative.
-}
import Control.Exception (assert)


posNeg :: Int -> Int -> Bool -> Bool
posNeg a b negative = undefined

main :: IO ()
main = do
    assert (posNeg 1 (-1) False == True) (putStrLn "Test passed")
    assert (posNeg (-1) 1 False == True) (putStrLn "Test passed")
    assert (posNeg (-4) (-5) True == True) (putStrLn "Test passed")
    assert (posNeg 1 (-1) False == True) (putStrLn "Test passed")
    assert (posNeg (-1) 1 False == True) (putStrLn "Test passed")
    assert (posNeg (-4) (-5) True == True) (putStrLn "Test passed")

