{-From https://codingbat.com/prob/p170221
Given an array of ints, we'll say that a triple is a value appearing 3 times in a row
in the array. Return true if the array does not contain any triples.
-}
import Control.Exception (assert)


noTriples :: [Int] -> Boolean
noTriples nums = undefined

main = do
    assert (noTriples [1,1,2,2,1] == true) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,2,1] == false) (putStrLn "Test passed")
    assert (noTriples [1,1,1,2,2,2,1] == false) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,1] == true) (putStrLn "Test passed")
    assert (noTriples [1,1,2,2,2,1] == false) (putStrLn "Test passed")
    assert (noTriples [1,1,1,2,2,2,1] == false) (putStrLn "Test passed")

