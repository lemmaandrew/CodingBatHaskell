{-From https://codingbat.com/prob/p139411
Given a string, look for a mirror image (backwards) string at both the beginning and end
of the given string. In other words, zero or more characters at the very begining of
the given string, and at the very end of the string in reverse order (possibly overlapping).
For example, the string "abXYZba" has the mirror end "ab".
-}
import Control.Exception (assert)


mirrorEnds :: String -> String
mirrorEnds string = undefined

main = do
    assert (mirrorEnds "abXYZba" == "ab") (putStrLn "Test passed")
    assert (mirrorEnds "abca" == "a") (putStrLn "Test passed")
    assert (mirrorEnds "aba" == "aba") (putStrLn "Test passed")
    assert (mirrorEnds "abXYZba" == "ab") (putStrLn "Test passed")
    assert (mirrorEnds "abca" == "a") (putStrLn "Test passed")
    assert (mirrorEnds "aba" == "aba") (putStrLn "Test passed")

