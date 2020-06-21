{-From https://codingbat.com/prob/p154137
Given a string, return a string where every appearance of the lowercase word "is" has
been replaced with "is not". The word "is" should not be immediately preceeded or followed
by a letter -- so for example the "is" in "this" does not count. (Note: Character.isLetter(char)
tests if a char is a letter.)
-}
import Control.Exception (assert)


notReplace :: String -> String
notReplace str = undefined

main = do
    assert (notReplace "istest" == "isnottest") (putStrLn "Test passed")
    assert (notReplace "is-is" == "isnot-isnot") (putStrLn "Test passed")
    assert (notReplace "Thisisright" == "Thisisnotright") (putStrLn "Test passed")
    assert (notReplace "istest" == "isnottest") (putStrLn "Test passed")
    assert (notReplace "is-is" == "isnot-isnot") (putStrLn "Test passed")
    assert (notReplace "Thisisright" == "Thisisnotright") (putStrLn "Test passed")

