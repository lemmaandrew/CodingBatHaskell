{-From https://codingbat.com/prob/p132118
Given two strings, append them together (known as "concatenation") and return the result.
However, if the concatenation creates a double-char, then omit one of the chars, so "abc"
and "cat" yields "abcat".
-}
import Control.Exception (assert)


conCat :: String -> String -> String
conCat a b = undefined

main :: IO ()
main = do
    assert (conCat "abc" "cat" == "abcat") (putStrLn "Test passed")
    assert (conCat "dog" "cat" == "dogcat") (putStrLn "Test passed")
    assert (conCat "abc" "" == "abc") (putStrLn "Test passed")
    assert (conCat "abc" "cat" == "abcat") (putStrLn "Test passed")
    assert (conCat "dog" "cat" == "dogcat") (putStrLn "Test passed")
    assert (conCat "abc" "" == "abc") (putStrLn "Test passed")

