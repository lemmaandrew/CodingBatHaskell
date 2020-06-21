{-From https://codingbat.com/prob/p171896
Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".
-}
import Control.Exception (assert)


helloName :: String -> String
helloName name = undefined

main = do
    assert (helloName "Bob" == "HelloBob!") (putStrLn "Test passed")
    assert (helloName "Alice" == "HelloAlice!") (putStrLn "Test passed")
    assert (helloName "X" == "HelloX!") (putStrLn "Test passed")
    assert (helloName "Bob" == "HelloBob!") (putStrLn "Test passed")
    assert (helloName "Alice" == "HelloAlice!") (putStrLn "Test passed")
    assert (helloName "X" == "HelloX!") (putStrLn "Test passed")

