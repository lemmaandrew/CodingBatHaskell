{-From https://codingbat.com/prob/p137274
Given a list of integers, return a list of those numbers, omitting any that are between
13 and 19 inclusive.
-}
import Control.Exception (assert)


noTeen :: [Integer] -> [Integer]
noTeen nums = undefined

main :: IO ()
main = do
    assert (noTeen [12,13,19,20] == [12,20]) (putStrLn "Test passed")
    assert (noTeen [1,14,1] == [1,1]) (putStrLn "Test passed")
    assert (noTeen [15] == []) (putStrLn "Test passed")
    assert (noTeen [12,13,19,20] == [12,20]) (putStrLn "Test passed")
    assert (noTeen [1,14,1] == [1,1]) (putStrLn "Test passed")
    assert (noTeen [15] == []) (putStrLn "Test passed")

