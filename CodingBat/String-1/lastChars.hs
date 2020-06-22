{-From https://codingbat.com/prob/p138183
Given 2 strings, a and b, return a new string made of the first char of a and the
last char of b, so "yo" and "java" yields "ya". If either string is length 0, use '@'
for its missing char.
-}
import Control.Exception (assert)


lastChars :: String -> String -> String
lastChars a b = undefined

main :: IO ()
main = do
    assert (lastChars "last" "chars" == "ls") (putStrLn "Test passed")
    assert (lastChars "yo" "java" == "ya") (putStrLn "Test passed")
    assert (lastChars "hi" "" == "h@") (putStrLn "Test passed")
    assert (lastChars "last" "chars" == "ls") (putStrLn "Test passed")
    assert (lastChars "yo" "java" == "ya") (putStrLn "Test passed")
    assert (lastChars "hi" "" == "h@") (putStrLn "Test passed")

