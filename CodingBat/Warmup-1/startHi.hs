{-From https://codingbat.com/prob/p191022
Given a string, return true if the string starts with "hi" and false otherwise.
-}
import Control.Exception (assert)


startHi :: String -> Bool
startHi str = undefined

main :: IO ()
main = do
    assert (startHi "hithere" == True) (putStrLn "Test passed")
    assert (startHi "hi" == True) (putStrLn "Test passed")
    assert (startHi "hellohi" == False) (putStrLn "Test passed")
    assert (startHi "hithere" == True) (putStrLn "Test passed")
    assert (startHi "hi" == True) (putStrLn "Test passed")
    assert (startHi "hellohi" == False) (putStrLn "Test passed")

