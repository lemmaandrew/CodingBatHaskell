{-From https://codingbat.com/prob/p136351
Given a string, we'll say that the front is the first 3 chars of the string. If the
string length is less than 3, the front is whatever is there. Return a new string which
is 3 copies of the front.
-}
import Control.Exception (assert)


front3 :: String -> String
front3 str = undefined

main :: IO ()
main = do
    assert (front3 "Java" == "JavJavJav") (putStrLn "Test passed")
    assert (front3 "Chocolate" == "ChoChoCho") (putStrLn "Test passed")
    assert (front3 "abc" == "abcabcabc") (putStrLn "Test passed")
    assert (front3 "Java" == "JavJavJav") (putStrLn "Test passed")
    assert (front3 "Chocolate" == "ChoChoCho") (putStrLn "Test passed")
    assert (front3 "abc" == "abcabcabc") (putStrLn "Test passed")

