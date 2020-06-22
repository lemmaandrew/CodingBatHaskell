{-From https://codingbat.com/prob/p126880
Given two strings, return true if either of the strings appears at the very end of the
other string, ignoring upper/lower case differences (in other words, the computation should
not be "case sensitive"). Note:    str.toLowerCase() returns the lowercase version of a string.
-}
import Control.Exception (assert)


endOther :: String -> String -> Bool
endOther a b = undefined

main :: IO ()
main = do
    assert (endOther "Hiabc" "abc" == True) (putStrLn "Test passed")
    assert (endOther "AbC" "HiaBc" == True) (putStrLn "Test passed")
    assert (endOther "abc" "abXabc" == True) (putStrLn "Test passed")
    assert (endOther "Hiabc" "abc" == True) (putStrLn "Test passed")
    assert (endOther "AbC" "HiaBc" == True) (putStrLn "Test passed")
    assert (endOther "abc" "abXabc" == True) (putStrLn "Test passed")

