{-From https://codingbat.com/prob/p162477
Given a string, return a string length 1 from its front, unless front is false, in which
case return a string length 1 from its back. The string will be non-empty.
-}
import Control.Exception (assert)


theEnd :: String -> Boolean -> String
theEnd str front = undefined

main = do
    assert (theEnd "Hello" true == "H") (putStrLn "Test passed")
    assert (theEnd "Hello" false == "o") (putStrLn "Test passed")
    assert (theEnd "oh" true == "o") (putStrLn "Test passed")
    assert (theEnd "Hello" true == "H") (putStrLn "Test passed")
    assert (theEnd "Hello" false == "o") (putStrLn "Test passed")
    assert (theEnd "oh" true == "o") (putStrLn "Test passed")

