{-From https://codingbat.com/prob/p123837
Given an array of scores, compute the int average of the first half and the second half,
and return whichever is larger. We'll say that the second half begins at index length/2.
The array length will be at least 2. To practice decomposition, write a separate helper
method int average(int[] scores, int start, int end) {    which computes the average of
the elements between indexes start..end. Call your helper method twice to implement scoresAverage().
Write your helper method after your scoresAverage() method in the JavaBat text area. Normally
you would compute averages with doubles, but here we use ints so the expected results
are exact.
-}
import Control.Exception (assert)


scoresAverage :: [Int] -> Int
scoresAverage scores = undefined

main :: IO ()
main = do
    assert (scoresAverage [2,2,4,4] == 4) (putStrLn "Test passed")
    assert (scoresAverage [4,4,4,2,2,2] == 4) (putStrLn "Test passed")
    assert (scoresAverage [3,4,5,1,2,3] == 4) (putStrLn "Test passed")
    assert (scoresAverage [2,2,4,4] == 4) (putStrLn "Test passed")
    assert (scoresAverage [4,4,4,2,2,2] == 4) (putStrLn "Test passed")
    assert (scoresAverage [3,4,5,1,2,3] == 4) (putStrLn "Test passed")

