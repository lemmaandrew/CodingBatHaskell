{-From https://codingbat.com/prob/p198640
Given 2 strings, a and b, return the number of the positions where they contain the same
length 2 substring. So "xxcaazz" and "xxbaaz" yields 3, since the "xx", "aa", and "az"
substrings appear in the same place in both strings.
-}
import Control.Exception (assert)


stringMatch :: String -> String -> Int
stringMatch a b = undefined

main :: IO ()
main = do
    assert (stringMatch "xxcaazz" "xxbaaz" == 3) (putStrLn "Test passed")
    assert (stringMatch "abc" "abc" == 2) (putStrLn "Test passed")
    assert (stringMatch "abc" "axc" == 0) (putStrLn "Test passed")
    assert (stringMatch "xxcaazz" "xxbaaz" == 3) (putStrLn "Test passed")
    assert (stringMatch "abc" "abc" == 2) (putStrLn "Test passed")
    assert (stringMatch "abc" "axc" == 0) (putStrLn "Test passed")

