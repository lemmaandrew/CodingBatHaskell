{-From https://codingbat.com/prob/p151940
Given a string, if the first or last chars are 'x', return the string without those 'x'
chars, and otherwise return the string unchanged.
-}
import Control.Exception (assert)


withoutX :: String -> String
withoutX str = undefined

main = do
    assert (withoutX "xHix" == "Hi") (putStrLn "Test passed")
    assert (withoutX "xHi" == "Hi") (putStrLn "Test passed")
    assert (withoutX "Hxix" == "Hxi") (putStrLn "Test passed")
    assert (withoutX "xHix" == "Hi") (putStrLn "Test passed")
    assert (withoutX "xHi" == "Hi") (putStrLn "Test passed")
    assert (withoutX "Hxix" == "Hxi") (putStrLn "Test passed")

