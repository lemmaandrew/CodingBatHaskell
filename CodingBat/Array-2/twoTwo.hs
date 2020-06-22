{-From https://codingbat.com/prob/p102145
Given an array of ints, return true if every 2 that appears in the array is next to
another 2.
-}
import Control.Exception (assert)


twoTwo :: [Int] -> Bool
twoTwo nums = undefined

main :: IO ()
main = do
    assert (twoTwo [4,2,2,3] == True) (putStrLn "Test passed")
    assert (twoTwo [2,2,4] == True) (putStrLn "Test passed")
    assert (twoTwo [2,2,4,2] == False) (putStrLn "Test passed")
    assert (twoTwo [4,2,2,3] == True) (putStrLn "Test passed")
    assert (twoTwo [2,2,4] == True) (putStrLn "Test passed")
    assert (twoTwo [2,2,4,2] == False) (putStrLn "Test passed")

