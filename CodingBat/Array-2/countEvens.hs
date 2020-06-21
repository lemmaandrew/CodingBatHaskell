{-From https://codingbat.com/prob/p162010
Return the number of even ints in the given array. Note: the % "mod" operator computes
the remainder, e.g. 5 % 2 is 1.
-}
import Control.Exception (assert)


countEvens :: [Int] -> Int
countEvens nums = undefined

main = do
    assert (countEvens [2,1,2,3,4] == 3) (putStrLn "Test passed")
    assert (countEvens [2,2,0] == 3) (putStrLn "Test passed")
    assert (countEvens [1,3,5] == 0) (putStrLn "Test passed")
    assert (countEvens [2,1,2,3,4] == 3) (putStrLn "Test passed")
    assert (countEvens [2,2,0] == 3) (putStrLn "Test passed")
    assert (countEvens [1,3,5] == 0) (putStrLn "Test passed")

