{-From https://codingbat.com/prob/p105031
Return an array that is "left shifted" by one -- so {6, 2, 5, 3} returns {2, 5, 3,
6}. You may modify and return the given array, or return a new array.
-}
import Control.Exception (assert)


shiftLeft :: [Int] -> [Int]
shiftLeft nums = undefined

main :: IO ()
main = do
    assert (shiftLeft [6,2,5,3] == [2,5,3,6]) (putStrLn "Test passed")
    assert (shiftLeft [1,2] == [2,1]) (putStrLn "Test passed")
    assert (shiftLeft [1] == [1]) (putStrLn "Test passed")
    assert (shiftLeft [6,2,5,3] == [2,5,3,6]) (putStrLn "Test passed")
    assert (shiftLeft [1,2] == [2,1]) (putStrLn "Test passed")
    assert (shiftLeft [1] == [1]) (putStrLn "Test passed")

