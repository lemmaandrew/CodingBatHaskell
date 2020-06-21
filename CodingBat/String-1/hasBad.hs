{-From https://codingbat.com/prob/p139075
Given a string, return true if "bad" appears starting at index 0 or 1 in the string,
such as with "badxxx" or "xbadxx" but not "xxbadxx". The string may be any length, including
0. Note: use .equals() to compare 2 strings.
-}
import Control.Exception (assert)


hasBad :: String -> Boolean
hasBad str = undefined

main = do
    assert (hasBad "badxx" == true) (putStrLn "Test passed")
    assert (hasBad "xbadxx" == true) (putStrLn "Test passed")
    assert (hasBad "xxbadxx" == false) (putStrLn "Test passed")
    assert (hasBad "badxx" == true) (putStrLn "Test passed")
    assert (hasBad "xbadxx" == true) (putStrLn "Test passed")
    assert (hasBad "xxbadxx" == false) (putStrLn "Test passed")

