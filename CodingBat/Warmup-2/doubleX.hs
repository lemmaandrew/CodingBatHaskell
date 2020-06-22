{-From https://codingbat.com/prob/p186759
Given a string, return true if the first instance of "x" in the string is immediately
followed by another "x".
-}
import Control.Exception (assert)


doubleX :: String -> Bool
doubleX str = undefined

main :: IO ()
main = do
    assert (doubleX "axxbb" == True) (putStrLn "Test passed")
    assert (doubleX "axaxax" == False) (putStrLn "Test passed")
    assert (doubleX "xxxxx" == True) (putStrLn "Test passed")
    assert (doubleX "axxbb" == True) (putStrLn "Test passed")
    assert (doubleX "axaxax" == False) (putStrLn "Test passed")
    assert (doubleX "xxxxx" == True) (putStrLn "Test passed")

