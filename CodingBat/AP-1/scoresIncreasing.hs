{-From https://codingbat.com/prob/p146974
Given an array of scores, return true if each score is equal or greater than the one
before. The array will be length 2 or more.
-}
import Control.Exception (assert)


scoresIncreasing :: [Int] -> Bool
scoresIncreasing scores = undefined

main :: IO ()
main = do
    assert (scoresIncreasing [1,3,4] == True) (putStrLn "Test passed")
    assert (scoresIncreasing [1,3,2] == False) (putStrLn "Test passed")
    assert (scoresIncreasing [1,1,4] == True) (putStrLn "Test passed")
    assert (scoresIncreasing [1,3,4] == True) (putStrLn "Test passed")
    assert (scoresIncreasing [1,3,2] == False) (putStrLn "Test passed")
    assert (scoresIncreasing [1,1,4] == True) (putStrLn "Test passed")

