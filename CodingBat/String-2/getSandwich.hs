{-From https://codingbat.com/prob/p129952
A sandwich is two pieces of bread with something in between. Return the string that is
between the first and last appearance of "bread" in the given string, or return the empty
string "" if there are not two pieces of bread.
-}
import Control.Exception (assert)


getSandwich :: String -> String
getSandwich str = undefined

main = do
    assert (getSandwich "breadjambread" == "jam") (putStrLn "Test passed")
    assert (getSandwich "xxbreadjambreadyy" == "jam") (putStrLn "Test passed")
    assert (getSandwich "xxbreadyy" == "") (putStrLn "Test passed")
    assert (getSandwich "breadjambread" == "jam") (putStrLn "Test passed")
    assert (getSandwich "xxbreadjambreadyy" == "jam") (putStrLn "Test passed")
    assert (getSandwich "xxbreadyy" == "") (putStrLn "Test passed")

