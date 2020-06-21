{-From https://codingbat.com/prob/p197720
Given a string, return a "rotated left 2" version where the first 2 chars are moved to
the end. The string length will be at least 2.
-}
import Control.Exception (assert)


left2 :: String -> String
left2 str = undefined

main = do
    assert (left2 "Hello" == "lloHe") (putStrLn "Test passed")
    assert (left2 "java" == "vaja") (putStrLn "Test passed")
    assert (left2 "Hi" == "Hi") (putStrLn "Test passed")
    assert (left2 "Hello" == "lloHe") (putStrLn "Test passed")
    assert (left2 "java" == "vaja") (putStrLn "Test passed")
    assert (left2 "Hi" == "Hi") (putStrLn "Test passed")

