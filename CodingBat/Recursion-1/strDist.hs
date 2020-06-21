{-From https://codingbat.com/prob/p195413
Given a string and a non-empty substring sub, compute recursively the largest substring
which starts and ends with sub and return its length.
-}
import Control.Exception (assert)


strDist :: String -> String -> Int
strDist str sub = undefined

main = do
    assert (strDist "catcowcat" "cat" == 9) (putStrLn "Test passed")
    assert (strDist "catcowcat" "cow" == 3) (putStrLn "Test passed")
    assert (strDist "cccatcowcatxx" "cat" == 9) (putStrLn "Test passed")
    assert (strDist "catcowcat" "cat" == 9) (putStrLn "Test passed")
    assert (strDist "catcowcat" "cow" == 3) (putStrLn "Test passed")
    assert (strDist "cccatcowcatxx" "cat" == 9) (putStrLn "Test passed")

