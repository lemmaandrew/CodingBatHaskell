{-From https://codingbat.com/prob/p191878
Given an array of ints, return true if the array contains a 2 next to a 2 or a 4
next to a 4, but not both.
-}
import Control.Exception (assert)


either24 :: [Int] -> Boolean
either24 nums = undefined

main = do
    assert (either24 [1,2,2] == true) (putStrLn "Test passed")
    assert (either24 [4,4,1] == true) (putStrLn "Test passed")
    assert (either24 [4,4,1,2,2] == false) (putStrLn "Test passed")
    assert (either24 [1,2,2] == true) (putStrLn "Test passed")
    assert (either24 [4,4,1] == true) (putStrLn "Test passed")
    assert (either24 [4,4,1,2,2] == false) (putStrLn "Test passed")

