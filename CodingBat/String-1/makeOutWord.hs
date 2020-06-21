{-From https://codingbat.com/prob/p184030
Given an "out" string length 4, such as "<<>>", and a word, return a new string where
the word is in the middle of the out string, e.g. "<<word>>". Note: use str.substring(i,
j) to extract the String starting at index i and going up to but not including index
j.
-}
import Control.Exception (assert)


makeOutWord :: String -> String -> String
makeOutWord out word = undefined

main = do
    assert (makeOutWord "<<>>" "Yay" == "<<Yay>>") (putStrLn "Test passed")
    assert (makeOutWord "<<>>" "WooHoo" == "<<WooHoo>>") (putStrLn "Test passed")
    assert (makeOutWord "[[]]" "word" == "[[word]]") (putStrLn "Test passed")
    assert (makeOutWord "<<>>" "Yay" == "<<Yay>>") (putStrLn "Test passed")
    assert (makeOutWord "<<>>" "WooHoo" == "<<WooHoo>>") (putStrLn "Test passed")
    assert (makeOutWord "[[]]" "word" == "[[word]]") (putStrLn "Test passed")

