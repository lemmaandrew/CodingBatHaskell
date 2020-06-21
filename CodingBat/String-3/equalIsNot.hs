{-From https://codingbat.com/prob/p141736
Given a string, return true if the number of appearances of "is" anywhere in the string
is equal to the number of appearances of "not" anywhere in the string (case sensitive).
-}
import Control.Exception (assert)


equalIsNot :: String -> Boolean
equalIsNot str = undefined

main = do
    assert (equalIsNot "Thisisnot" == false) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnotnot" == true) (putStrLn "Test passed")
    assert (equalIsNot "noisxxnotyynotxisi" == true) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnot" == false) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnotnot" == true) (putStrLn "Test passed")
    assert (equalIsNot "noisxxnotyynotxisi" == true) (putStrLn "Test passed")

