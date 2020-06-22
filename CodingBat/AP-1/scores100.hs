{-From https://codingbat.com/prob/p179487
Given an array of scores, return true if there are scores of 100 next to each other
in the array. The array length will be at least 2.
-}
import Control.Exception (assert)


scores100 :: [Int] -> Bool
scores100 scores = undefined

main :: IO ()
main = do
    assert (scores100 [1,100,100] == True) (putStrLn "Test passed")
    assert (scores100 [1,100,99,100] == False) (putStrLn "Test passed")
    assert (scores100 [100,1,100,100] == True) (putStrLn "Test passed")
    assert (scores100 [1,100,100] == True) (putStrLn "Test passed")
    assert (scores100 [1,100,99,100] == False) (putStrLn "Test passed")
    assert (scores100 [100,1,100,100] == True) (putStrLn "Test passed")

