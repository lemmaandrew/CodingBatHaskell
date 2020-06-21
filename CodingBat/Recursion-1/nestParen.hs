{-From https://codingbat.com/prob/p183174
Given a string, return true if it is a nesting of zero or more pairs of parenthesis,
like "(())" or "((()))". Suggestion: check the first and last chars, and then recur on
what's inside them.
-}
import Control.Exception (assert)


nestParen :: String -> Boolean
nestParen str = undefined

main = do
    assert (nestParen "(( == true) (putStrLn "Test passed")
    assert (nestParen "((( == true) (putStrLn "Test passed")
    assert (nestParen "(((x == false) (putStrLn "Test passed")
    assert (nestParen "(( == true) (putStrLn "Test passed")
    assert (nestParen "((( == true) (putStrLn "Test passed")
    assert (nestParen "(((x == false) (putStrLn "Test passed")

