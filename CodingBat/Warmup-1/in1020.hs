{-From https://codingbat.com/prob/p144535
Given 2 int values, return true if either of them is in the range 10..20 inclusive.
-}
import Control.Exception (assert)


in1020 :: Int -> Int -> Boolean
in1020 a b = undefined

main = do
    assert (in1020 12 99 == true) (putStrLn "Test passed")
    assert (in1020 21 12 == true) (putStrLn "Test passed")
    assert (in1020 8 99 == false) (putStrLn "Test passed")
    assert (in1020 12 99 == true) (putStrLn "Test passed")
    assert (in1020 21 12 == true) (putStrLn "Test passed")
    assert (in1020 8 99 == false) (putStrLn "Test passed")

