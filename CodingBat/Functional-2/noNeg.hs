{-From https://codingbat.com/prob/p103456
Given a list of integers, return a list of the integers, omitting any that are less than
0.
-}
import Control.Exception (assert)


noNeg :: [Integer] -> [Integer]
noNeg nums = undefined

main = do
    assert (noNeg [1,-2] == [1]) (putStrLn "Test passed")
    assert (noNeg [-3,-3,3,3] == [3,3]) (putStrLn "Test passed")
    assert (noNeg [-1,-1,-1] == []) (putStrLn "Test passed")
    assert (noNeg [1,-2] == [1]) (putStrLn "Test passed")
    assert (noNeg [-3,-3,3,3] == [3,3]) (putStrLn "Test passed")
    assert (noNeg [-1,-1,-1] == []) (putStrLn "Test passed")

