{-From https://codingbat.com/prob/p195714
We'll say that a "triple" in a string is a char appearing three times in a row. Return
the number of triples in the given string. The triples may overlap.
-}
import Control.Exception (assert)


countTriple :: String -> Int
countTriple str = undefined

main = do
    assert (countTriple "abcXXXabc" == 1) (putStrLn "Test passed")
    assert (countTriple "xxxabyyyycd" == 3) (putStrLn "Test passed")
    assert (countTriple "a" == 0) (putStrLn "Test passed")
    assert (countTriple "abcXXXabc" == 1) (putStrLn "Test passed")
    assert (countTriple "xxxabyyyycd" == 3) (putStrLn "Test passed")
    assert (countTriple "a" == 0) (putStrLn "Test passed")

