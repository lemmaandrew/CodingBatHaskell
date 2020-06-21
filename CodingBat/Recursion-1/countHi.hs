{-From https://codingbat.com/prob/p184029
Given a string, compute recursively (no loops) the number of times lowercase "hi" appears
in the string.
-}
import Control.Exception (assert)


countHi :: String -> Int
countHi str = undefined

main = do
    assert (countHi "xxhixx" == 1) (putStrLn "Test passed")
    assert (countHi "xhixhix" == 2) (putStrLn "Test passed")
    assert (countHi "hi" == 1) (putStrLn "Test passed")
    assert (countHi "xxhixx" == 1) (putStrLn "Test passed")
    assert (countHi "xhixhix" == 2) (putStrLn "Test passed")
    assert (countHi "hi" == 1) (putStrLn "Test passed")

