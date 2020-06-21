{-From https://codingbat.com/prob/p105745
Given two strings, append them together (known as "concatenation") and return the result.
However, if the strings are different lengths, omit chars from the longer string so it
is the same length as the shorter string. So "Hello" and "Hi" yield "loHi". The strings
may be any length.
-}
import Control.Exception (assert)


minCat :: String -> String -> String
minCat a b = undefined

main = do
    assert (minCat "Hello" "Hi" == "loHi") (putStrLn "Test passed")
    assert (minCat "Hello" "java" == "ellojava") (putStrLn "Test passed")
    assert (minCat "java" "Hello" == "javaello") (putStrLn "Test passed")
    assert (minCat "Hello" "Hi" == "loHi") (putStrLn "Test passed")
    assert (minCat "Hello" "java" == "ellojava") (putStrLn "Test passed")
    assert (minCat "java" "Hello" == "javaello") (putStrLn "Test passed")

