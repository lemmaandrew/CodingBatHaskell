{-From https://codingbat.com/prob/p158767
Given a non-empty array, return true if there is a place to split the array so that
the sum of the numbers on one side is equal to the sum of the numbers on the other
side.
-}
import Control.Exception (assert)


canBalance :: [Int] -> Bool
canBalance nums = undefined

main :: IO ()
main = do
    assert (canBalance [1,1,1,2,1] == True) (putStrLn "Test passed")
    assert (canBalance [2,1,1,2,1] == False) (putStrLn "Test passed")
    assert (canBalance [10,10] == True) (putStrLn "Test passed")
    assert (canBalance [1,1,1,2,1] == True) (putStrLn "Test passed")
    assert (canBalance [2,1,1,2,1] == False) (putStrLn "Test passed")
    assert (canBalance [10,10] == True) (putStrLn "Test passed")

