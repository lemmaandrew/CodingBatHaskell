{-From https://codingbat.com/prob/p186759
Given a string, return true if the first instance of "x" in the string is immediately
followed by another "x".
-}
import Control.Exception (assert)


doubleX :: String -> Boolean
doubleX str = undefined

main = do
    assert (doubleX "axxbb" == true) (putStrLn "Test passed")
    assert (doubleX "axaxax" == false) (putStrLn "Test passed")
    assert (doubleX "xxxxx" == true) (putStrLn "Test passed")
    assert (doubleX "axxbb" == true) (putStrLn "Test passed")
    assert (doubleX "axaxax" == false) (putStrLn "Test passed")
    assert (doubleX "xxxxx" == true) (putStrLn "Test passed")

