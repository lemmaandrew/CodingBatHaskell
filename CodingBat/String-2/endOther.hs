{-From https://codingbat.com/prob/p126880
Given two strings, return true if either of the strings appears at the very end of the
other string, ignoring upper/lower case differences (in other words, the computation should
not be "case sensitive"). Note:    str.toLowerCase() returns the lowercase version of a string.
-}
import Control.Exception (assert)


endOther :: String -> String -> Boolean
endOther a b = undefined

main = do
    assert (endOther "Hiabc" "abc" == true) (putStrLn "Test passed")
    assert (endOther "AbC" "HiaBc" == true) (putStrLn "Test passed")
    assert (endOther "abc" "abXabc" == true) (putStrLn "Test passed")
    assert (endOther "Hiabc" "abc" == true) (putStrLn "Test passed")
    assert (endOther "AbC" "HiaBc" == true) (putStrLn "Test passed")
    assert (endOther "abc" "abXabc" == true) (putStrLn "Test passed")

