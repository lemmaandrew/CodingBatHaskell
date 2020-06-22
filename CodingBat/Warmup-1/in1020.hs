{-From https://codingbat.com/prob/p144535
Given 2 int values, return true if either of them is in the range 10..20 inclusive.
-}
import Control.Exception (assert)


in1020 :: Int -> Int -> Bool
in1020 a b = undefined

main :: IO ()
main = do
    assert (in1020 12 99 == True) (putStrLn "Test passed")
    assert (in1020 21 12 == True) (putStrLn "Test passed")
    assert (in1020 8 99 == False) (putStrLn "Test passed")
    assert (in1020 12 99 == True) (putStrLn "Test passed")
    assert (in1020 21 12 == True) (putStrLn "Test passed")
    assert (in1020 8 99 == False) (putStrLn "Test passed")

