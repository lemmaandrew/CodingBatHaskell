{-From https://codingbat.com/prob/p173784
Return true if the given string contains between 1 and 3 'e' chars.
-}
import Control.Exception (assert)


stringE :: String -> Bool
stringE str = undefined

main :: IO ()
main = do
    assert (stringE "Hello" == True) (putStrLn "Test passed")
    assert (stringE "Heelle" == True) (putStrLn "Test passed")
    assert (stringE "Heelele" == False) (putStrLn "Test passed")
    assert (stringE "Hello" == True) (putStrLn "Test passed")
    assert (stringE "Heelle" == True) (putStrLn "Test passed")
    assert (stringE "Heelele" == False) (putStrLn "Test passed")

