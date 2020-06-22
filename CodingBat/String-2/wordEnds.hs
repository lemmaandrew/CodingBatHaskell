{-From https://codingbat.com/prob/p147538
Given a string and a non-empty word string, return a string made of each char just before
and just after every appearance of the word in the string. Ignore cases where there is
no char before or after the word, and a char may be included twice if it is between
two words.
-}
import Control.Exception (assert)


wordEnds :: String -> String -> String
wordEnds str word = undefined

main :: IO ()
main = do
    assert (wordEnds "abcXY123XYijk" "XY" == "c13i") (putStrLn "Test passed")
    assert (wordEnds "XY123XY" "XY" == "13") (putStrLn "Test passed")
    assert (wordEnds "XY1XY" "XY" == "11") (putStrLn "Test passed")
    assert (wordEnds "abcXY123XYijk" "XY" == "c13i") (putStrLn "Test passed")
    assert (wordEnds "XY123XY" "XY" == "13") (putStrLn "Test passed")
    assert (wordEnds "XY1XY" "XY" == "11") (putStrLn "Test passed")

