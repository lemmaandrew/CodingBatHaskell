{-From https://codingbat.com/prob/p143825
Given 2 strings, return their concatenation, except omit the first char of each. The strings
will be at least length 1.
-}
import Control.Exception (assert)


nonStart :: String -> String -> String
nonStart a b = undefined

main = do
    assert (nonStart "Hello" "There" == "ellohere") (putStrLn "Test passed")
    assert (nonStart "java" "code" == "avaode") (putStrLn "Test passed")
    assert (nonStart "shotl" "java" == "hotlava") (putStrLn "Test passed")
    assert (nonStart "Hello" "There" == "ellohere") (putStrLn "Test passed")
    assert (nonStart "java" "code" == "avaode") (putStrLn "Test passed")
    assert (nonStart "shotl" "java" == "hotlava") (putStrLn "Test passed")

