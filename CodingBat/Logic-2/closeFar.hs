{-From https://codingbat.com/prob/p138990
Given three ints, a b c, return true if one of b or c is "close" (differing from a
by at most 1), while the other is "far", differing from both other values by 2 or more.
Note: Math.abs(num) computes the absolute value of a number.
-}
import Control.Exception (assert)


closeFar :: Int -> Int -> Int -> Bool
closeFar a b c = undefined

main :: IO ()
main = do
    assert (closeFar 1 2 10 == True) (putStrLn "Test passed")
    assert (closeFar 1 2 3 == False) (putStrLn "Test passed")
    assert (closeFar 4 1 3 == True) (putStrLn "Test passed")
    assert (closeFar 1 2 10 == True) (putStrLn "Test passed")
    assert (closeFar 1 2 3 == False) (putStrLn "Test passed")
    assert (closeFar 4 1 3 == True) (putStrLn "Test passed")

