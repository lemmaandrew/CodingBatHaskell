{-From https://codingbat.com/prob/p109537
Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in
each array. Return the array which has the largest sum. In event of a tie, return a.
-}
import Control.Exception (assert)


biggerTwo :: [Int] -> [Int] -> [Int]
biggerTwo a b = undefined

main = do
    assert (biggerTwo [1,2] [3,4] == [3,4]) (putStrLn "Test passed")
    assert (biggerTwo [3,4] [1,2] == [3,4]) (putStrLn "Test passed")
    assert (biggerTwo [1,1] [1,2] == [1,2]) (putStrLn "Test passed")
    assert (biggerTwo [1,2] [3,4] == [3,4]) (putStrLn "Test passed")
    assert (biggerTwo [3,4] [1,2] == [3,4]) (putStrLn "Test passed")
    assert (biggerTwo [1,1] [1,2] == [1,2]) (putStrLn "Test passed")

