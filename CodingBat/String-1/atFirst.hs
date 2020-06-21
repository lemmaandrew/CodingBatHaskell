{-From https://codingbat.com/prob/p139076
Given a string, return a string length 2 made of its first 2 chars. If the string length
is less than 2, use '@' for the missing chars.
-}
import Control.Exception (assert)


atFirst :: String -> String
atFirst str = undefined

main = do
    assert (atFirst "hello" == "he") (putStrLn "Test passed")
    assert (atFirst "hi" == "hi") (putStrLn "Test passed")
    assert (atFirst "h" == "h@") (putStrLn "Test passed")
    assert (atFirst "hello" == "he") (putStrLn "Test passed")
    assert (atFirst "hi" == "hi") (putStrLn "Test passed")
    assert (atFirst "h" == "h@") (putStrLn "Test passed")

