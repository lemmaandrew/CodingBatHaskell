{-From https://codingbat.com/prob/p143461
Given 2 int arrays, a and b, return a new array length 2 containing, as much as will
fit, the elements from a followed by the elements from b. The arrays may be any length,
including 0, but there will be 2 or more elements available between the 2 arrays.
-}
import Control.Exception (assert)


make2 :: [Int] -> [Int] -> [Int]
make2 a b = undefined

main = do
    assert (make2 [4,5] [1,2,3] == [4,5]) (putStrLn "Test passed")
    assert (make2 [4] [1,2,3] == [4,1]) (putStrLn "Test passed")
    assert (make2 [] [1,2] == [1,2]) (putStrLn "Test passed")
    assert (make2 [4,5] [1,2,3] == [4,5]) (putStrLn "Test passed")
    assert (make2 [4] [1,2,3] == [4,1]) (putStrLn "Test passed")
    assert (make2 [] [1,2] == [1,2]) (putStrLn "Test passed")

