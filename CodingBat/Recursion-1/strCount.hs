{-From https://codingbat.com/prob/p186177
Given a string and a non-empty substring sub, compute recursively the number of times that
sub appears in the string, without the sub strings overlapping.
-}
import Control.Exception (assert)


strCount :: String -> String -> Int
strCount str sub = undefined

main = do
    assert (strCount "catcowcat" "cat" == 2) (putStrLn "Test passed")
    assert (strCount "catcowcat" "cow" == 1) (putStrLn "Test passed")
    assert (strCount "catcowcat" "dog" == 0) (putStrLn "Test passed")
    assert (strCount "catcowcat" "cat" == 2) (putStrLn "Test passed")
    assert (strCount "catcowcat" "cow" == 1) (putStrLn "Test passed")
    assert (strCount "catcowcat" "dog" == 0) (putStrLn "Test passed")

