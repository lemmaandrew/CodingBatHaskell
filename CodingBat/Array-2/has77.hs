{-From https://codingbat.com/prob/p168357
Given an array of ints, return true if the array contains two 7's next to each other,
or there are two 7's separated by one element, such as with {7, 1, 7}.
-}
import Control.Exception (assert)


has77 :: [Int] -> Boolean
has77 nums = undefined

main = do
    assert (has77 [1,7,7] == true) (putStrLn "Test passed")
    assert (has77 [1,7,1,7] == true) (putStrLn "Test passed")
    assert (has77 [1,7,1,1,7] == false) (putStrLn "Test passed")
    assert (has77 [1,7,7] == true) (putStrLn "Test passed")
    assert (has77 [1,7,1,7] == true) (putStrLn "Test passed")
    assert (has77 [1,7,1,1,7] == false) (putStrLn "Test passed")

