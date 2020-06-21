{-From https://codingbat.com/prob/p191991
Given 2 arrays of ints, a and b, return true if they have the same first element or
they have the same last element. Both arrays will be length 1 or more.
-}
import Control.Exception (assert)


commonEnd :: [Int] -> [Int] -> Boolean
commonEnd a b = undefined

main = do
    assert (commonEnd [1,2,3] [7,3] == true) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3,2] == false) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [1,3] == true) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3] == true) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3,2] == false) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [1,3] == true) (putStrLn "Test passed")

