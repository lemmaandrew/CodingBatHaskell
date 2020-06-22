{-From https://codingbat.com/prob/p199519
Given an array of ints of even length, return a new array length 2 containing the middle
two elements from the original array. The original array will be length 2 or more.
-}
import Control.Exception (assert)


makeMiddle :: [Int] -> [Int]
makeMiddle nums = undefined

main :: IO ()
main = do
    assert (makeMiddle [1,2,3,4] == [2,3]) (putStrLn "Test passed")
    assert (makeMiddle [7,1,2,3,4,9] == [2,3]) (putStrLn "Test passed")
    assert (makeMiddle [1,2] == [1,2]) (putStrLn "Test passed")
    assert (makeMiddle [1,2,3,4] == [2,3]) (putStrLn "Test passed")
    assert (makeMiddle [7,1,2,3,4,9] == [2,3]) (putStrLn "Test passed")
    assert (makeMiddle [1,2] == [1,2]) (putStrLn "Test passed")

