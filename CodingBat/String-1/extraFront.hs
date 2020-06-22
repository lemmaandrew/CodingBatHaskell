{-From https://codingbat.com/prob/p172063
Given a string, return a new string made of 3 copies of the first 2 chars of the original
string. The string may be any length. If there are fewer than 2 chars, use whatever is
there.
-}
import Control.Exception (assert)


extraFront :: String -> String
extraFront str = undefined

main :: IO ()
main = do
    assert (extraFront "Hello" == "HeHeHe") (putStrLn "Test passed")
    assert (extraFront "ab" == "ababab") (putStrLn "Test passed")
    assert (extraFront "H" == "HHH") (putStrLn "Test passed")
    assert (extraFront "Hello" == "HeHeHe") (putStrLn "Test passed")
    assert (extraFront "ab" == "ababab") (putStrLn "Test passed")
    assert (extraFront "H" == "HHH") (putStrLn "Test passed")

