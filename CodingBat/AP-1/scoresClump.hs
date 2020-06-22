{-From https://codingbat.com/prob/p194530
Given an array of scores sorted in increasing order, return true if the array contains
3 adjacent scores that differ from each other by at most 2, such as with {3, 4, 5}
or {3, 5, 5}.
-}
import Control.Exception (assert)


scoresClump :: [Int] -> Bool
scoresClump scores = undefined

main :: IO ()
main = do
    assert (scoresClump [3,4,5] == True) (putStrLn "Test passed")
    assert (scoresClump [3,4,6] == False) (putStrLn "Test passed")
    assert (scoresClump [1,3,5,5] == True) (putStrLn "Test passed")
    assert (scoresClump [3,4,5] == True) (putStrLn "Test passed")
    assert (scoresClump [3,4,6] == False) (putStrLn "Test passed")
    assert (scoresClump [1,3,5,5] == True) (putStrLn "Test passed")

