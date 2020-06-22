{-From https://codingbat.com/prob/p100962
We'll say a number is special if it is a multiple of 11 or if it is one more than
a multiple of 11. Return true if the given non-negative number is special. Use the %
"mod" operator -- see Introduction to Mod
-}
import Control.Exception (assert)


specialEleven :: Int -> Bool
specialEleven n = undefined

main :: IO ()
main = do
    assert (specialEleven 22 == True) (putStrLn "Test passed")
    assert (specialEleven 23 == True) (putStrLn "Test passed")
    assert (specialEleven 24 == False) (putStrLn "Test passed")
    assert (specialEleven 22 == True) (putStrLn "Test passed")
    assert (specialEleven 23 == True) (putStrLn "Test passed")
    assert (specialEleven 24 == False) (putStrLn "Test passed")

