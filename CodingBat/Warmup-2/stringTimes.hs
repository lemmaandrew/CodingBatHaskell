{-From https://codingbat.com/prob/p142270
Given a string and a non-negative int n, return a larger string that is n copies of
the original string.
-}
import Control.Exception (assert)


stringTimes :: String -> Int -> String
stringTimes str n = undefined

main = do
    assert (stringTimes "Hi" 2 == "HiHi") (putStrLn "Test passed")
    assert (stringTimes "Hi" 3 == "HiHiHi") (putStrLn "Test passed")
    assert (stringTimes "Hi" 1 == "Hi") (putStrLn "Test passed")
    assert (stringTimes "Hi" 2 == "HiHi") (putStrLn "Test passed")
    assert (stringTimes "Hi" 3 == "HiHiHi") (putStrLn "Test passed")
    assert (stringTimes "Hi" 1 == "Hi") (putStrLn "Test passed")

