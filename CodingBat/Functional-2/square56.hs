{-From https://codingbat.com/prob/p132748
Given a list of integers, return a list of those numbers squared and the product added
to 10, omitting any of the resulting numbers that end in 5 or 6.
-}
import Control.Exception (assert)


square56 :: [Integer] -> [Integer]
square56 nums = undefined

main = do
    assert (square56 [3,1,4] == [19,11]) (putStrLn "Test passed")
    assert (square56 [1] == [11]) (putStrLn "Test passed")
    assert (square56 [2] == [14]) (putStrLn "Test passed")
    assert (square56 [3,1,4] == [19,11]) (putStrLn "Test passed")
    assert (square56 [1] == [11]) (putStrLn "Test passed")
    assert (square56 [2] == [14]) (putStrLn "Test passed")

