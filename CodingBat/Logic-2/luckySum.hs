{-From https://codingbat.com/prob/p130788
Given 3 int values, a b c, return their sum. However, if one of the values is 13 then
it does not count towards the sum and values to its right do not count. So for example,
if b is 13, then both b and c do not count.
-}
import Control.Exception (assert)


luckySum :: Int -> Int -> Int -> Int
luckySum a b c = undefined

main = do
    assert (luckySum 1 2 3 == 6) (putStrLn "Test passed")
    assert (luckySum 1 2 13 == 3) (putStrLn "Test passed")
    assert (luckySum 1 13 3 == 1) (putStrLn "Test passed")
    assert (luckySum 1 2 3 == 6) (putStrLn "Test passed")
    assert (luckySum 1 2 13 == 3) (putStrLn "Test passed")
    assert (luckySum 1 13 3 == 1) (putStrLn "Test passed")

