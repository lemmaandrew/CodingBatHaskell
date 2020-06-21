{-From https://codingbat.com/prob/p109783
Given an array of ints, return true if the value 3 appears in the array exactly 3 times,
and no 3's are next to each other.
-}
import Control.Exception (assert)


haveThree :: [Int] -> Boolean
haveThree nums = undefined

main = do
    assert (haveThree [3,1,3,1,3] == true) (putStrLn "Test passed")
    assert (haveThree [3,1,3,3] == false) (putStrLn "Test passed")
    assert (haveThree [3,4,3,3,4] == false) (putStrLn "Test passed")
    assert (haveThree [3,1,3,1,3] == true) (putStrLn "Test passed")
    assert (haveThree [3,1,3,3] == false) (putStrLn "Test passed")
    assert (haveThree [3,4,3,3,4] == false) (putStrLn "Test passed")

