{-From https://codingbat.com/prob/p148198
Given a list of non-negative integers, return a list of those numbers multiplied by 2,
omitting any of the resulting numbers that end in 2.
-}
import Control.Exception (assert)


two2 :: [Integer] -> [Integer]
two2 nums = undefined

main = do
    assert (two2 [1,2,3] == [4,6]) (putStrLn "Test passed")
    assert (two2 [2,6,11] == [4]) (putStrLn "Test passed")
    assert (two2 [0] == [0]) (putStrLn "Test passed")
    assert (two2 [1,2,3] == [4,6]) (putStrLn "Test passed")
    assert (two2 [2,6,11] == [4]) (putStrLn "Test passed")
    assert (two2 [0] == [0]) (putStrLn "Test passed")

