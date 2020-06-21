{-From https://codingbat.com/prob/p171260
Given a string, return a version where all the "x" have been removed. Except an "x" at
the very start or end should not be removed.
-}
import Control.Exception (assert)


stringX :: String -> String
stringX str = undefined

main = do
    assert (stringX "xxHxix" == "xHix") (putStrLn "Test passed")
    assert (stringX "abxxxcd" == "abcd") (putStrLn "Test passed")
    assert (stringX "xabxxxcdx" == "xabcdx") (putStrLn "Test passed")
    assert (stringX "xxHxix" == "xHix") (putStrLn "Test passed")
    assert (stringX "abxxxcd" == "abcd") (putStrLn "Test passed")
    assert (stringX "xabxxxcdx" == "xabcdx") (putStrLn "Test passed")

