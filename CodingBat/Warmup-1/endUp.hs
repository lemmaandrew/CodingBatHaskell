{-From https://codingbat.com/prob/p125268
Given a string, return a new string where the last 3 chars are now in upper case. If
the string has less than 3 chars, uppercase whatever is there. Note that str.toUpperCase()
returns the uppercase version of a string.
-}
import Control.Exception (assert)


endUp :: String -> String
endUp str = undefined

main = do
    assert (endUp "Hello" == "HeLLO") (putStrLn "Test passed")
    assert (endUp "hithere" == "hithERE") (putStrLn "Test passed")
    assert (endUp "hi" == "HI") (putStrLn "Test passed")
    assert (endUp "Hello" == "HeLLO") (putStrLn "Test passed")
    assert (endUp "hithere" == "hithERE") (putStrLn "Test passed")
    assert (endUp "hi" == "HI") (putStrLn "Test passed")

