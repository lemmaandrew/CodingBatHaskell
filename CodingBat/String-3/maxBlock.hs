{-From https://codingbat.com/prob/p179479
Given a string, return the length of the largest "block" in the string. A block is a
run of adjacent chars that are the same.
-}
import Control.Exception (assert)


maxBlock :: String -> Int
maxBlock str = undefined

main = do
    assert (maxBlock "hoopla" == 2) (putStrLn "Test passed")
    assert (maxBlock "abbCCCddBBBxx" == 3) (putStrLn "Test passed")
    assert (maxBlock "" == 0) (putStrLn "Test passed")
    assert (maxBlock "hoopla" == 2) (putStrLn "Test passed")
    assert (maxBlock "abbCCCddBBBxx" == 3) (putStrLn "Test passed")
    assert (maxBlock "" == 0) (putStrLn "Test passed")

