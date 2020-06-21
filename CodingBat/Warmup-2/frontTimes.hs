{-From https://codingbat.com/prob/p101475
Given a string and a non-negative int n, we'll say that the front of the string is the
first 3 chars, or whatever is there if the string is less than length 3. Return n copies
of the front;
-}
import Control.Exception (assert)


frontTimes :: String -> Int -> String
frontTimes str n = undefined

main = do
    assert (frontTimes "Chocolate" 2 == "ChoCho") (putStrLn "Test passed")
    assert (frontTimes "Chocolate" 3 == "ChoChoCho") (putStrLn "Test passed")
    assert (frontTimes "Abc" 3 == "AbcAbcAbc") (putStrLn "Test passed")
    assert (frontTimes "Chocolate" 2 == "ChoCho") (putStrLn "Test passed")
    assert (frontTimes "Chocolate" 3 == "ChoChoCho") (putStrLn "Test passed")
    assert (frontTimes "Abc" 3 == "AbcAbcAbc") (putStrLn "Test passed")

