{-From https://codingbat.com/prob/p122943
Given a string, compute a new string by moving the first char to come after the next
two chars, so "abc" yields "bca". Repeat this process for each subsequent group of 3 chars,
so "abcdef" yields "bcaefd". Ignore any group of fewer than 3 chars at the end.
-}
import Control.Exception (assert)


oneTwo :: String -> String
oneTwo str = undefined

main :: IO ()
main = do
    assert (oneTwo "abc" == "bca") (putStrLn "Test passed")
    assert (oneTwo "tca" == "cat") (putStrLn "Test passed")
    assert (oneTwo "tcagdo" == "catdog") (putStrLn "Test passed")
    assert (oneTwo "abc" == "bca") (putStrLn "Test passed")
    assert (oneTwo "tca" == "cat") (putStrLn "Test passed")
    assert (oneTwo "tcagdo" == "catdog") (putStrLn "Test passed")

