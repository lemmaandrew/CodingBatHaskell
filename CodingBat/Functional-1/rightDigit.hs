{-From https://codingbat.com/prob/p152194
Given a list of non-negative integers, return an integer list of the rightmost digits.
(Note: use %)
-}
import Control.Exception (assert)


rightDigit :: [Integer] -> [Integer]
rightDigit nums = undefined

main :: IO ()
main = do
    assert (rightDigit [1,22,93] == [1,2,3]) (putStrLn "Test passed")
    assert (rightDigit [16,8,886,8,1] == [6,8,6,8,1]) (putStrLn "Test passed")
    assert (rightDigit [10,0] == [0,0]) (putStrLn "Test passed")
    assert (rightDigit [1,22,93] == [1,2,3]) (putStrLn "Test passed")
    assert (rightDigit [16,8,886,8,1] == [6,8,6,8,1]) (putStrLn "Test passed")
    assert (rightDigit [10,0] == [0,0]) (putStrLn "Test passed")

