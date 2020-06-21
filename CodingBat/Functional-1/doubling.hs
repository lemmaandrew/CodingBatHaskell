{-From https://codingbat.com/prob/p117665
Given a list of integers, return a list where each integer is multiplied by 2.
-}
import Control.Exception (assert)


doubling :: [Integer] -> [Integer]
doubling nums = undefined

main = do
    assert (doubling [1,2,3] == [2,4,6]) (putStrLn "Test passed")
    assert (doubling [6,8,6,8,-1] == [12,16,12,16,-2]) (putStrLn "Test passed")
    assert (doubling [] == []) (putStrLn "Test passed")
    assert (doubling [1,2,3] == [2,4,6]) (putStrLn "Test passed")
    assert (doubling [6,8,6,8,-1] == [12,16,12,16,-2]) (putStrLn "Test passed")
    assert (doubling [] == []) (putStrLn "Test passed")

