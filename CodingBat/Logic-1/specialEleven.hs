{-From https://codingbat.com/prob/p100962
We'll say a number is special if it is a multiple of 11 or if it is one more than
a multiple of 11. Return true if the given non-negative number is special. Use the %
"mod" operator -- see Introduction to Mod
-}
import Control.Exception (assert)


specialEleven :: Int -> Boolean
specialEleven n = undefined

main = do
    assert (specialEleven 22 == true) (putStrLn "Test passed")
    assert (specialEleven 23 == true) (putStrLn "Test passed")
    assert (specialEleven 24 == false) (putStrLn "Test passed")
    assert (specialEleven 22 == true) (putStrLn "Test passed")
    assert (specialEleven 23 == true) (putStrLn "Test passed")
    assert (specialEleven 24 == false) (putStrLn "Test passed")

