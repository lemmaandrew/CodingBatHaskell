{-From https://codingbat.com/prob/p118182
Given a string and a non-empty substring sub, compute recursively if at least n copies
of sub appear in the string somewhere, possibly with overlapping. N will be non-negative.
-}
import Control.Exception (assert)


strCopies :: String -> String -> Int -> Bool
strCopies str sub n = undefined

main :: IO ()
main = do
    assert (strCopies "catcowcat" "cat" 2 == True) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 2 == False) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 1 == True) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cat" 2 == True) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 2 == False) (putStrLn "Test passed")
    assert (strCopies "catcowcat" "cow" 1 == True) (putStrLn "Test passed")

