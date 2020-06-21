{-From https://codingbat.com/prob/p118182
Given a string and a non-empty substring sub, compute recursively if at least n copies
of sub appear in the string somewhere, possibly with overlapping. N will be non-negative.
-}
import Control.Exception (assert)


strCopies :: String -> String -> Int -> Boolean
strCopies str sub n = undefined

main = do
    assert (strCopies "catcowcat" "cat" 2 == true) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 2 == false) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 1 == true) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cat" 2 == true) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 2 == false) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 1 == true) (putStrLn "Test passed")

