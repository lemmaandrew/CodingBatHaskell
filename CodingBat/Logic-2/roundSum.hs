{-From https://codingbat.com/prob/p186753
For this problem, we'll round an int value up to the next multiple of 10 if its rightmost
digit is 5 or more, so 15 rounds up to 20. Alternately, round down to the previous multiple
of 10 if its rightmost digit is less than 5, so 12 rounds down to 10. Given 3 ints,
a b c, return the sum of their rounded values. To avoid code repetition, write a separate
helper "public int round10(int num) {" and call it 3 times. Write the helper entirely
below and at the same indent level as roundSum().
-}
import Control.Exception (assert)


roundSum :: Int -> Int -> Int -> Int
roundSum a b c = undefined

main :: IO ()
main = do
    assert (roundSum 16 17 18 == 60) (putStrLn "Test passed")
    assert (roundSum 12 13 14 == 30) (putStrLn "Test passed")
    assert (roundSum 6 4 4 == 10) (putStrLn "Test passed")
    assert (roundSum 16 17 18 == 60) (putStrLn "Test passed")
    assert (roundSum 12 13 14 == 30) (putStrLn "Test passed")
    assert (roundSum 6 4 4 == 10) (putStrLn "Test passed")

