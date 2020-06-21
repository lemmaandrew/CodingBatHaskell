{-From https://codingbat.com/prob/p136417
Given a string, consider the prefix string made of the first N chars of the string. Does
that prefix string appear somewhere else in the string? Assume that the string is not
empty and that N is in the range 1..str.length().
-}
import Control.Exception (assert)


prefixAgain :: String -> Int -> Boolean
prefixAgain str n = undefined

main = do
    assert (prefixAgain "abXYabc" 1 == true) (putStrLn "Test passed")
    assert (prefixAgain "abXYabc" 2 == true) (putStrLn "Test passed")
    assert (prefixAgain "abXYabc" 3 == false) (putStrLn "Test passed")
    assert (prefixAgain "abXYabc" 1 == true) (putStrLn "Test passed")
    assert (prefixAgain "abXYabc" 2 == true) (putStrLn "Test passed")
    assert (prefixAgain "abXYabc" 3 == false) (putStrLn "Test passed")

