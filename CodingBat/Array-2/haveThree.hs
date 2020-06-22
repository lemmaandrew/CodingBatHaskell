{-From https://codingbat.com/prob/p109783
Given an array of ints, return true if the value 3 appears in the array exactly 3 times,
and no 3's are next to each other.
-}
import Control.Exception (assert)


haveThree :: [Int] -> Bool
haveThree nums = undefined

main :: IO ()
main = do
    assert (haveThree [3,1,3,1,3] == True) (putStrLn "Test passed")
    assert (haveThree [3,1,3,3] == False) (putStrLn "Test passed")
    assert (haveThree [3,4,3,3,4] == False) (putStrLn "Test passed")
    assert (haveThree [3,1,3,1,3] == True) (putStrLn "Test passed")
    assert (haveThree [3,1,3,3] == False) (putStrLn "Test passed")
    assert (haveThree [3,4,3,3,4] == False) (putStrLn "Test passed")

