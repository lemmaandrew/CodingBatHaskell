{-From https://codingbat.com/prob/p113261
Given three ints, a b c, return true if it is possible to add two of the ints to get
the third.
-}
import Control.Exception (assert)


twoAsOne :: Int -> Int -> Int -> Bool
twoAsOne a b c = undefined

main :: IO ()
main = do
    assert (twoAsOne 1 2 3 == True) (putStrLn "Test passed")
    assert (twoAsOne 3 1 2 == True) (putStrLn "Test passed")
    assert (twoAsOne 3 2 2 == False) (putStrLn "Test passed")
    assert (twoAsOne 1 2 3 == True) (putStrLn "Test passed")
    assert (twoAsOne 3 1 2 == True) (putStrLn "Test passed")
    assert (twoAsOne 3 2 2 == False) (putStrLn "Test passed")

