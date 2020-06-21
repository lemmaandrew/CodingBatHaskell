{-From https://codingbat.com/prob/p142539
Given start and end numbers, return a new array containing the sequence of integers from
start up to but not including end, so start=5 and end=10 yields {5, 6, 7, 8, 9}. The
end number will be greater or equal to the start number. Note that a length-0 array is
valid. (See also: FizzBuzz Code)
-}
import Control.Exception (assert)


fizzArray3 :: Int -> Int -> [Int]
fizzArray3 start end = undefined

main = do
    assert (fizzArray3 5 10 == [5,6,7,8,9]) (putStrLn "Test passed")
    assert (fizzArray3 11 18 == [11,12,13,14,15,16,17]) (putStrLn "Test passed")
    assert (fizzArray3 1 3 == [1,2]) (putStrLn "Test passed")
    assert (fizzArray3 5 10 == [5,6,7,8,9]) (putStrLn "Test passed")
    assert (fizzArray3 11 18 == [11,12,13,14,15,16,17]) (putStrLn "Test passed")
    assert (fizzArray3 1 3 == [1,2]) (putStrLn "Test passed")

