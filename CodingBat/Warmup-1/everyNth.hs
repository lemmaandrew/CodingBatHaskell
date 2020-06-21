{-From https://codingbat.com/prob/p196441
Given a non-empty string and an int N, return the string made starting with char 0, and
then every Nth char of the string. So if N is 3, use char 0, 3, 6, ... and so on.
N is 1 or more.
-}
import Control.Exception (assert)


everyNth :: String -> Int -> String
everyNth str n = undefined

main = do
    assert (everyNth "Miracle" 2 == "Mrce") (putStrLn "Test passed")
    assert (everyNth "abcdefg" 2 == "aceg") (putStrLn "Test passed")
    assert (everyNth "abcdefg" 3 == "adg") (putStrLn "Test passed")
    assert (everyNth "Miracle" 2 == "Mrce") (putStrLn "Test passed")
    assert (everyNth "abcdefg" 2 == "aceg") (putStrLn "Test passed")
    assert (everyNth "abcdefg" 3 == "adg") (putStrLn "Test passed")

