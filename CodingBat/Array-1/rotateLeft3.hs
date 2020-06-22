{-From https://codingbat.com/prob/p185139
Given an array of ints length 3, return an array with the elements "rotated left" so
{1, 2, 3} yields {2, 3, 1}.
-}
import Control.Exception (assert)


rotateLeft3 :: [Int] -> [Int]
rotateLeft3 nums = undefined

main :: IO ()
main = do
    assert (rotateLeft3 [1,2,3] == [2,3,1]) (putStrLn "Test passed")
    assert (rotateLeft3 [5,11,9] == [11,9,5]) (putStrLn "Test passed")
    assert (rotateLeft3 [7,0,0] == [0,0,7]) (putStrLn "Test passed")
    assert (rotateLeft3 [1,2,3] == [2,3,1]) (putStrLn "Test passed")
    assert (rotateLeft3 [5,11,9] == [11,9,5]) (putStrLn "Test passed")
    assert (rotateLeft3 [7,0,0] == [0,0,7]) (putStrLn "Test passed")

