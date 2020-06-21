{-From https://codingbat.com/prob/p148972
Given 3 int values, a b c, return their sum. However, if one of the values is the same
as another of the values, it does not count towards the sum.
-}
import Control.Exception (assert)


loneSum :: Int -> Int -> Int -> Int
loneSum a b c = undefined

main = do
    assert (loneSum 1 2 3 == 6) (putStrLn "Test passed")
    assert (loneSum 3 2 3 == 2) (putStrLn "Test passed")
    assert (loneSum 3 3 3 == 0) (putStrLn "Test passed")
    assert (loneSum 1 2 3 == 6) (putStrLn "Test passed")
    assert (loneSum 3 2 3 == 2) (putStrLn "Test passed")
    assert (loneSum 3 3 3 == 0) (putStrLn "Test passed")

