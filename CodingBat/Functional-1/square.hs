{-From https://codingbat.com/prob/p139586
Given a list of integers, return a list where each integer is multiplied with itself.
-}
import Control.Exception (assert)


square :: [Integer] -> [Integer]
square nums = undefined

main :: IO ()
main = do
    assert (square [1,2,3] == [1,4,9]) (putStrLn "Test passed")
    assert (square [6,8,-6,-8,1] == [36,64,36,64,1]) (putStrLn "Test passed")
    assert (square [] == []) (putStrLn "Test passed")
    assert (square [1,2,3] == [1,4,9]) (putStrLn "Test passed")
    assert (square [6,8,-6,-8,1] == [36,64,36,64,1]) (putStrLn "Test passed")
    assert (square [] == []) (putStrLn "Test passed")

