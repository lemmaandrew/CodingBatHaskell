{-From https://codingbat.com/prob/p146449
Given 2 int arrays, a and b, each length 3, return a new array length 2 containing their
middle elements.
-}
import Control.Exception (assert)


middleWay :: [Int] -> [Int] -> [Int]
middleWay a b = undefined

main :: IO ()
main = do
    assert (middleWay [1,2,3] [4,5,6] == [2,5]) (putStrLn "Test passed")
    assert (middleWay [7,7,7] [3,8,0] == [7,8]) (putStrLn "Test passed")
    assert (middleWay [5,2,9] [1,4,5] == [2,4]) (putStrLn "Test passed")
    assert (middleWay [1,2,3] [4,5,6] == [2,5]) (putStrLn "Test passed")
    assert (middleWay [7,7,7] [3,8,0] == [7,8]) (putStrLn "Test passed")
    assert (middleWay [5,2,9] [1,4,5] == [2,4]) (putStrLn "Test passed")

