{-From https://codingbat.com/prob/p170221
Given an array of ints, we'll say that a triple is a value appearing 3 times in a row
in the array. Return true if the array does not contain any triples.
-}
import Control.Exception (assert)


noTriples :: [Int] -> Bool
noTriples nums = undefined

main :: IO ()
main = do
    assert (noTriples [1,1,2,2,1] == True) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,2,1] == False) (putStrLn "Test passed")
    assert (noTriples [1,1,1,2,2,2,1] == False) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,1] == True) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,2,1] == False) (putStrLn "Test passed")
    assert (noTriples [1,1,1,2,2,2,1] == False) (putStrLn "Test passed")

