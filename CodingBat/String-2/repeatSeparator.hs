{-From https://codingbat.com/prob/p109637
Given two strings, word and a separator sep, return a big string made of count occurrences
of the word, separated by the separator string.
-}
import Control.Exception (assert)


repeatSeparator :: String -> String -> Int -> String
repeatSeparator word sep count = undefined

main = do
    assert (repeatSeparator "Word" "X" 3 == "WordXWordXWord") (putStrLn "Test passed")
    assert (repeatSeparator "This" "And" 2 == "ThisAndThis") (putStrLn "Test passed")
    assert (repeatSeparator "This" "And" 1 == "This") (putStrLn "Test passed")
    assert (repeatSeparator "Word" "X" 3 == "WordXWordXWord") (putStrLn "Test passed")
    assert (repeatSeparator "This" "And" 2 == "ThisAndThis") (putStrLn "Test passed")
    assert (repeatSeparator "This" "And" 1 == "This") (putStrLn "Test passed")

