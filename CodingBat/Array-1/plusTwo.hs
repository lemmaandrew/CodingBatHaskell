{-From https://codingbat.com/prob/p180840
Given 2 int arrays, each length 2, return a new array length 4 containing all their elements.
-}
import Control.Exception (assert)


plusTwo :: [Int] -> [Int] -> [Int]
plusTwo a b = undefined

main :: IO ()
main = do
    assert (plusTwo [1,2] [3,4] == [1,2,3,4]) (putStrLn "Test passed")
    assert (plusTwo [4,4] [2,2] == [4,4,2,2]) (putStrLn "Test passed")
    assert (plusTwo [9,2] [3,4] == [9,2,3,4]) (putStrLn "Test passed")
    assert (plusTwo [1,2] [3,4] == [1,2,3,4]) (putStrLn "Test passed")
    assert (plusTwo [4,4] [2,2] == [4,4,2,2]) (putStrLn "Test passed")
    assert (plusTwo [9,2] [3,4] == [9,2,3,4]) (putStrLn "Test passed")

