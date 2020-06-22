{-From https://codingbat.com/prob/p189576
Consider the leftmost and righmost appearances of some value in an array. We'll say that
the "span" is the number of elements between the two inclusive. A single value has a
span of 1. Returns the largest span found in the given array. (Efficiency is not a priority.)
-}
import Control.Exception (assert)


maxSpan :: [Int] -> Int
maxSpan nums = undefined

main :: IO ()
main = do
    assert (maxSpan [1,2,1,1,3] == 4) (putStrLn "Test passed")
    assert (maxSpan [1,4,2,1,4,1,4] == 6) (putStrLn "Test passed")
    assert (maxSpan [1,4,2,1,4,4,4] == 6) (putStrLn "Test passed")
    assert (maxSpan [1,2,1,1,3] == 4) (putStrLn "Test passed")
    assert (maxSpan [1,4,2,1,4,1,4] == 6) (putStrLn "Test passed")
    assert (maxSpan [1,4,2,1,4,4,4] == 6) (putStrLn "Test passed")

