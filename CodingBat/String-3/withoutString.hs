{-From https://codingbat.com/prob/p192570
Given two strings, base and remove, return a version of the base string where all instances
of the remove string have been removed (not case sensitive). You may assume that the remove
string is length 1 or more. Remove only non-overlapping instances, so with "xxx" removing
"xx" leaves "x".
-}
import Control.Exception (assert)


withoutString :: String -> String -> String
withoutString base remove = undefined

main = do
    assert (withoutString "Hellothere" "llo" == "Hethere") (putStrLn "Test passed")
    assert (withoutString "Hellothere" "e" == "Hllothr") (putStrLn "Test passed")
    assert (withoutString "Hellothere" "x" == "Hellothere") (putStrLn "Test passed")
    assert (withoutString "Hellothere" "llo" == "Hethere") (putStrLn "Test passed")
    assert (withoutString "Hellothere" "e" == "Hllothr") (putStrLn "Test passed")
    assert (withoutString "Hellothere" "x" == "Hellothere") (putStrLn "Test passed")

