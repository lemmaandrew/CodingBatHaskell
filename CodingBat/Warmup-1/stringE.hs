{-From https://codingbat.com/prob/p173784
Return true if the given string contains between 1 and 3 'e' chars.
-}
import Control.Exception (assert)


stringE :: String -> Boolean
stringE str = undefined

main = do
    assert (stringE "Hello" == true) (putStrLn "Test passed")
    assert (stringE "Heelle" == true) (putStrLn "Test passed")
    assert (stringE "Heelele" == false) (putStrLn "Test passed")
    assert (stringE "Hello" == true) (putStrLn "Test passed")
    assert (stringE "Heelle" == true) (putStrLn "Test passed")
    assert (stringE "Heelele" == false) (putStrLn "Test passed")

