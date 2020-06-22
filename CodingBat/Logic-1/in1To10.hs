{-From https://codingbat.com/prob/p137365
Given a number n, return true if n is in the range 1..10, inclusive. Unless outsideMode
is true, in which case return true if the number is less or equal to 1, or greater
or equal to 10.
-}
import Control.Exception (assert)


in1To10 :: Int -> Bool -> Bool
in1To10 n outsideMode = undefined

main :: IO ()
main = do
    assert (in1To10 5 False == True) (putStrLn "Test passed")
    assert (in1To10 11 False == False) (putStrLn "Test passed")
    assert (in1To10 11 True == True) (putStrLn "Test passed")
    assert (in1To10 5 False == True) (putStrLn "Test passed")
    assert (in1To10 11 False == False) (putStrLn "Test passed")
    assert (in1To10 11 True == True) (putStrLn "Test passed")

