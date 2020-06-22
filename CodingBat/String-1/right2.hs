{-From https://codingbat.com/prob/p130781
Given a string, return a "rotated right 2" version where the last 2 chars are moved to
the start. The string length will be at least 2.
-}
import Control.Exception (assert)


right2 :: String -> String
right2 str = undefined

main :: IO ()
main = do
    assert (right2 "Hello" == "loHel") (putStrLn "Test passed")
    assert (right2 "java" == "vaja") (putStrLn "Test passed")
    assert (right2 "Hi" == "Hi") (putStrLn "Test passed")
    assert (right2 "Hello" == "loHel") (putStrLn "Test passed")
    assert (right2 "java" == "vaja") (putStrLn "Test passed")
    assert (right2 "Hi" == "Hi") (putStrLn "Test passed")

