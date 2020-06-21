{-From https://codingbat.com/prob/p179487
Given an array of scores, return true if there are scores of 100 next to each other
in the array. The array length will be at least 2.
-}
import Control.Exception (assert)


scores100 :: [Int] -> Boolean
scores100 scores = undefined

main = do
    assert (scores100 [1,100,100] == true) (putStrLn "Test passed")
    assert (scores100 [1,100,99,100] == false) (putStrLn "Test passed")
    assert (scores100 [100,1,100,100] == true) (putStrLn "Test passed")
    assert (scores100 [1,100,100] == true) (putStrLn "Test passed")
    assert (scores100 [1,100,99,100] == false) (putStrLn "Test passed")
    assert (scores100 [100,1,100,100] == true) (putStrLn "Test passed")

