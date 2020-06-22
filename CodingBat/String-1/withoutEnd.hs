{-From https://codingbat.com/prob/p130896
Given a string, return a version without the first and last char, so "Hello" yields "ell".
The string length will be at least 2.
-}
import Control.Exception (assert)


withoutEnd :: String -> String
withoutEnd str = undefined

main :: IO ()
main = do
    assert (withoutEnd "Hello" == "ell") (putStrLn "Test passed")
    assert (withoutEnd "java" == "av") (putStrLn "Test passed")
    assert (withoutEnd "coding" == "odin") (putStrLn "Test passed")
    assert (withoutEnd "Hello" == "ell") (putStrLn "Test passed")
    assert (withoutEnd "java" == "av") (putStrLn "Test passed")
    assert (withoutEnd "coding" == "odin") (putStrLn "Test passed")

