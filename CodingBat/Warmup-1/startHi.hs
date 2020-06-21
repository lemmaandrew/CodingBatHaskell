{-From https://codingbat.com/prob/p191022
Given a string, return true if the string starts with "hi" and false otherwise.
-}
import Control.Exception (assert)


startHi :: String -> Boolean
startHi str = undefined

main = do
    assert (startHi "hithere" == true) (putStrLn "Test passed")
    assert (startHi "hi" == true) (putStrLn "Test passed")
    assert (startHi "hellohi" == false) (putStrLn "Test passed")
    assert (startHi "hithere" == true) (putStrLn "Test passed")
    assert (startHi "hi" == true) (putStrLn "Test passed")
    assert (startHi "hellohi" == false) (putStrLn "Test passed")

