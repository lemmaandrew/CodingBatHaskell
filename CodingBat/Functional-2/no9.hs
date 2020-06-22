{-From https://codingbat.com/prob/p124510
Given a list of non-negative integers, return a list of those numbers except omitting any
that end with 9. (Note:    % by 10)
-}
import Control.Exception (assert)


no9 :: [Integer] -> [Integer]
no9 nums = undefined

main :: IO ()
main = do
    assert (no9 [1,2,19] == [1,2]) (putStrLn "Test passed")
    assert (no9 [9,19,29,3] == [3]) (putStrLn "Test passed")
    assert (no9 [1,2,3] == [1,2,3]) (putStrLn "Test passed")
    assert (no9 [1,2,19] == [1,2]) (putStrLn "Test passed")
    assert (no9 [9,19,29,3] == [3]) (putStrLn "Test passed")
    assert (no9 [1,2,3] == [1,2,3]) (putStrLn "Test passed")

