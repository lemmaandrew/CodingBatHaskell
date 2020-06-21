{-From https://codingbat.com/prob/p110141
Given a string, return a version without the first 2 chars. Except keep the first char
if it is 'a' and keep the second char if it is 'b'. The string may be any length.
Harder than it looks.
-}
import Control.Exception (assert)


deFront :: String -> String
deFront str = undefined

main = do
    assert (deFront "Hello" == "llo") (putStrLn "Test passed")
    assert (deFront "java" == "va") (putStrLn "Test passed")
    assert (deFront "away" == "aay") (putStrLn "Test passed")
    assert (deFront "Hello" == "llo") (putStrLn "Test passed")
    assert (deFront "java" == "va") (putStrLn "Test passed")
    assert (deFront "away" == "aay") (putStrLn "Test passed")

