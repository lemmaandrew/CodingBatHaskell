{-From https://codingbat.com/prob/p158767
Given a non-empty array, return true if there is a place to split the array so that
the sum of the numbers on one side is equal to the sum of the numbers on the other
side.
-}
import Control.Exception (assert)


canBalance :: [Int] -> Boolean
canBalance nums = undefined

main = do
    assert (canBalance [1,1,1,2,1] == true) (putStrLn "Test passed")
    assert (canBalance [2,1,1,2,1] == false) (putStrLn "Test passed")
    assert (canBalance [10,10] == true) (putStrLn "Test passed")
    assert (canBalance [1,1,1,2,1] == true) (putStrLn "Test passed")
    assert (canBalance [2,1,1,2,1] == false) (putStrLn "Test passed")
    assert (canBalance [10,10] == true) (putStrLn "Test passed")

