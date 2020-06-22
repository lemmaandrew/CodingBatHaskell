{-From https://codingbat.com/prob/p141736
Given a string, return true if the number of appearances of "is" anywhere in the string
is equal to the number of appearances of "not" anywhere in the string (case sensitive).
-}
import Control.Exception (assert)


equalIsNot :: String -> Bool
equalIsNot str = undefined

main :: IO ()
main = do
    assert (equalIsNot "Thisisnot" == False) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnotnot" == True) (putStrLn "Test passed")
    assert (equalIsNot "noisxxnotyynotxisi" == True) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnot" == False) (putStrLn "Test passed")
    assert (equalIsNot "Thisisnotnot" == True) (putStrLn "Test passed")
    assert (equalIsNot "noisxxnotyynotxisi" == True) (putStrLn "Test passed")

