{-From https://codingbat.com/prob/p118230
Given a string, compute recursively a new string where all the 'x' chars have been removed.
-}
import Control.Exception (assert)


noX :: String -> String
noX str = undefined

main = do
    assert (noX "xaxb" == "ab") (putStrLn "Test passed")
    assert (noX "abc" == "abc") (putStrLn "Test passed")
    assert (noX "xx" == "") (putStrLn "Test passed")
    assert (noX "xaxb" == "ab") (putStrLn "Test passed")
    assert (noX "abc" == "abc") (putStrLn "Test passed")
    assert (noX "xx" == "") (putStrLn "Test passed")

