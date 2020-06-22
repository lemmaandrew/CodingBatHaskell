{-From https://codingbat.com/prob/p183174
Given a string, return true if it is a nesting of zero or more pairs of parenthesis,
like "(())" or "((()))". Suggestion: check the first and last chars, and then recur on
what's inside them.
-}
import Control.Exception (assert)


nestParen :: String -> Bool
nestParen str = undefined

main :: IO ()
main = do
    assert (nestParen "(())" == True) (putStrLn "Test passed")
    assert (nestParen "((()))" == True) (putStrLn "Test passed")
    assert (nestParen "(((x))" == False) (putStrLn "Test passed")
    assert (nestParen "(())" == True) (putStrLn "Test passed")
    assert (nestParen "((()))" == True) (putStrLn "Test passed")
    assert (nestParen "(((x))" == False) (putStrLn "Test passed")

