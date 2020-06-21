{-From https://codingbat.com/prob/p165312
Given a string, return a string where for every char in the original, there are two chars.
-}
import Control.Exception (assert)


doubleChar :: String -> String
doubleChar str = undefined

main = do
    assert (doubleChar "The" == "TThhee") (putStrLn "Test passed")
    assert (doubleChar "AAbb" == "AAAAbbbb") (putStrLn "Test passed")
    assert (doubleChar "Hi-There" == "HHii--TThheerree") (putStrLn "Test passed")
    assert (doubleChar "The" == "TThhee") (putStrLn "Test passed")
    assert (doubleChar "AAbb" == "AAAAbbbb") (putStrLn "Test passed")
    assert (doubleChar "Hi-There" == "HHii--TThheerree") (putStrLn "Test passed")

