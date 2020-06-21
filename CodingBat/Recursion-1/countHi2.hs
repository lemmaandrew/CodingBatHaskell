{-From https://codingbat.com/prob/p143900
Given a string, compute recursively the number of times lowercase "hi" appears in the string,
however do not count "hi" that have an 'x' immedately before them.
-}
import Control.Exception (assert)


countHi2 :: String -> Int
countHi2 str = undefined

main = do
    assert (countHi2 "ahixhi" == 1) (putStrLn "Test passed")
    assert (countHi2 "ahibhi" == 2) (putStrLn "Test passed")
    assert (countHi2 "xhixhi" == 0) (putStrLn "Test passed")
    assert (countHi2 "ahixhi" == 1) (putStrLn "Test passed")
    assert (countHi2 "ahibhi" == 2) (putStrLn "Test passed")
    assert (countHi2 "xhixhi" == 0) (putStrLn "Test passed")

