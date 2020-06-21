{-From https://codingbat.com/prob/p103869
Given a list of integers, return a list where each integer is added to 1 and the result
is multiplied by 10.
-}
import Control.Exception (assert)


math1 :: [Integer] -> [Integer]
math1 nums = undefined

main = do
    assert (math1 [1,2,3] == [20,30,40]) (putStrLn "Test passed")
    assert (math1 [6,8,6,8,1] == [70,90,70,90,20]) (putStrLn "Test passed")
    assert (math1 [10] == [110]) (putStrLn "Test passed")
    assert (math1 [1,2,3] == [20,30,40]) (putStrLn "Test passed")
    assert (math1 [6,8,6,8,1] == [70,90,70,90,20]) (putStrLn "Test passed")
    assert (math1 [10] == [110]) (putStrLn "Test passed")

