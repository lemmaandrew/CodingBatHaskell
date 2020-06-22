{-From https://codingbat.com/prob/p199216
Given a string, if the string begins with "red" or "blue" return that color string, otherwise
return the empty string.
-}
import Control.Exception (assert)


seeColor :: String -> String
seeColor str = undefined

main :: IO ()
main = do
    assert (seeColor "redxx" == "red") (putStrLn "Test passed")
    assert (seeColor "xxred" == "") (putStrLn "Test passed")
    assert (seeColor "blueTimes" == "blue") (putStrLn "Test passed")
    assert (seeColor "redxx" == "red") (putStrLn "Test passed")
    assert (seeColor "xxred" == "") (putStrLn "Test passed")
    assert (seeColor "blueTimes" == "blue") (putStrLn "Test passed")

