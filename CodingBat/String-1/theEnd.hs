{-From https://codingbat.com/prob/p162477
Given a string, return a string length 1 from its front, unless front is false, in which
case return a string length 1 from its back. The string will be non-empty.
-}
import Control.Exception (assert)


theEnd :: String -> Bool -> String
theEnd str front = undefined

main :: IO ()
main = do
    assert (theEnd "Hello" True == "H") (putStrLn "Test passed")
    assert (theEnd "Hello" False == "o") (putStrLn "Test passed")
    assert (theEnd "oh" True == "o") (putStrLn "Test passed")
    assert (theEnd "Hello" True == "H") (putStrLn "Test passed")
    assert (theEnd "Hello" False == "o") (putStrLn "Test passed")
    assert (theEnd "oh" True == "o") (putStrLn "Test passed")

