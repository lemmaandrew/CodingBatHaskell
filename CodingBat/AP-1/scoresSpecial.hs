{-From https://codingbat.com/prob/p140485
Given two arrays, A and B, of non-negative int scores. A "special" score is one which
is a multiple of 10, such as 40 or 90. Return the sum of largest special score in A
and the largest special score in B. To practice decomposition, write a separate helper
method which finds the largest special score in an array. Write your helper method after
your scoresSpecial() method in the JavaBat text area.
-}
import Control.Exception (assert)


scoresSpecial :: [Int] -> [Int] -> Int
scoresSpecial a b = undefined

main :: IO ()
main = do
    assert (scoresSpecial [12,10,4] [2,20,30] == 40) (putStrLn "Test passed")
    assert (scoresSpecial [20,10,4] [2,20,10] == 40) (putStrLn "Test passed")
    assert (scoresSpecial [12,11,4] [2,20,31] == 20) (putStrLn "Test passed")
    assert (scoresSpecial [12,10,4] [2,20,30] == 40) (putStrLn "Test passed")
    assert (scoresSpecial [20,10,4] [2,20,10] == 40) (putStrLn "Test passed")
    assert (scoresSpecial [12,11,4] [2,20,31] == 20) (putStrLn "Test passed")

