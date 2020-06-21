{-From https://codingbat.com/prob/p168564
Given 2 strings, a and b, return a string of the form short+long+short, with the shorter
string on the outside and the longer string on the inside. The strings will not be the
same length, but they may be empty (length 0).
-}
import Control.Exception (assert)


comboString :: String -> String -> String
comboString a b = undefined

main = do
    assert (comboString "Hello" "hi" == "hiHellohi") (putStrLn "Test passed")
    assert (comboString "hi" "Hello" == "hiHellohi") (putStrLn "Test passed")
    assert (comboString "aaa" "b" == "baaab") (putStrLn "Test passed")
    assert (comboString "Hello" "hi" == "hiHellohi") (putStrLn "Test passed")
    assert (comboString "hi" "Hello" == "hiHellohi") (putStrLn "Test passed")
    assert (comboString "aaa" "b" == "baaab") (putStrLn "Test passed")

