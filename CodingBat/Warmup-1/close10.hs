{-From https://codingbat.com/prob/p172021
Given 2 int values, return whichever value is nearest to the value 10, or return 0 in
the event of a tie. Note that Math.abs(n) returns the absolute value of a number.
-}
import Control.Exception (assert)


close10 :: Int -> Int -> Int
close10 a b = undefined

main = do
    assert (close10 8 13 == 8) (putStrLn "Test passed")
    assert (close10 13 8 == 8) (putStrLn "Test passed")
    assert (close10 13 7 == 0) (putStrLn "Test passed")
    assert (close10 8 13 == 8) (putStrLn "Test passed")
    assert (close10 13 8 == 8) (putStrLn "Test passed")
    assert (close10 13 7 == 0) (putStrLn "Test passed")

