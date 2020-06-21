{-From https://codingbat.com/prob/p161642
Given a string, take the last char and return a new string with the last char added
at the front and back, so "cat" yields "tcatt". The original string will be length 1
or more.
-}
import Control.Exception (assert)


backAround :: String -> String
backAround str = undefined

main = do
    assert (backAround "cat" == "tcatt") (putStrLn "Test passed")
    assert (backAround "Hello" == "oHelloo") (putStrLn "Test passed")
    assert (backAround "a" == "aaa") (putStrLn "Test passed")
    assert (backAround "cat" == "tcatt") (putStrLn "Test passed")
    assert (backAround "Hello" == "oHelloo") (putStrLn "Test passed")
    assert (backAround "a" == "aaa") (putStrLn "Test passed")

