{-From https://codingbat.com/prob/p113261
Given three ints, a b c, return true if it is possible to add two of the ints to get
the third.
-}
import Control.Exception (assert)


twoAsOne :: Int -> Int -> Int -> Boolean
twoAsOne a b c = undefined

main = do
    assert (twoAsOne 1 2 3 == true) (putStrLn "Test passed")
    assert (twoAsOne 3 1 2 == true) (putStrLn "Test passed")
    assert (twoAsOne 3 2 2 == false) (putStrLn "Test passed")
    assert (twoAsOne 1 2 3 == true) (putStrLn "Test passed")
    assert (twoAsOne 3 1 2 == true) (putStrLn "Test passed")
    assert (twoAsOne 3 2 2 == false) (putStrLn "Test passed")

