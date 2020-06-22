{-From https://codingbat.com/prob/p191991
Given 2 arrays of ints, a and b, return true if they have the same first element or
they have the same last element. Both arrays will be length 1 or more.
-}
import Control.Exception (assert)


commonEnd :: [Int] -> [Int] -> Bool
commonEnd a b = undefined

main :: IO ()
main = do
    assert (commonEnd [1,2,3] [7,3] == True) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3,2] == False) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [1,3] == True) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3] == True) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [7,3,2] == False) (putStrLn "Test passed")
    assert (commonEnd [1,2,3] [1,3] == True) (putStrLn "Test passed")

