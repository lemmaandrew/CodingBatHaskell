{-From https://codingbat.com/prob/p174254
Given a string, return a version without both the first and last char of the string.
The string may be any length, including 0.
-}
import Control.Exception (assert)


withouEnd2 :: String -> String
withouEnd2 str = undefined

main :: IO ()
main = do
    assert (withouEnd2 "Hello" == "ell") (putStrLn "Test passed")
    assert (withouEnd2 "abc" == "b") (putStrLn "Test passed")
    assert (withouEnd2 "ab" == "") (putStrLn "Test passed")
    assert (withouEnd2 "Hello" == "ell") (putStrLn "Test passed")
    assert (withouEnd2 "abc" == "b") (putStrLn "Test passed")
    assert (withouEnd2 "ab" == "") (putStrLn "Test passed")

