{-From https://codingbat.com/prob/p137918
Given a string that contains a single pair of parenthesis, compute recursively a new string
made of only of the parenthesis and their contents, so "xyz(abc)123" yields "(abc)".
-}
import Control.Exception (assert)


parenBit :: String -> String
parenBit str = undefined

main :: IO ()
main = do
    assert (parenBit "xyz(abc)123" == "(abc)") (putStrLn "Test passed")
    assert (parenBit "x(hello)" == "(hello)") (putStrLn "Test passed")
    assert (parenBit "(xy)1" == "(xy)") (putStrLn "Test passed")
    assert (parenBit "xyz(abc)123" == "(abc)") (putStrLn "Test passed")
    assert (parenBit "x(hello)" == "(hello)") (putStrLn "Test passed")
    assert (parenBit "(xy)1" == "(xy)") (putStrLn "Test passed")

