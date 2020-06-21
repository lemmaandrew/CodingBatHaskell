{-From https://codingbat.com/prob/p194786
Given a string of any length, return a new string where the last 2 chars, if present,
are swapped, so "coding" yields "codign".
-}
import Control.Exception (assert)


lastTwo :: String -> String
lastTwo str = undefined

main = do
    assert (lastTwo "coding" == "codign") (putStrLn "Test passed")
    assert (lastTwo "cat" == "cta") (putStrLn "Test passed")
    assert (lastTwo "ab" == "ba") (putStrLn "Test passed")
    assert (lastTwo "coding" == "codign") (putStrLn "Test passed")
    assert (lastTwo "cat" == "cta") (putStrLn "Test passed")
    assert (lastTwo "ab" == "ba") (putStrLn "Test passed")

