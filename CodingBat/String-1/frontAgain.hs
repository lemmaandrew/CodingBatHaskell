{-From https://codingbat.com/prob/p196652
Given a string, return true if the first 2 chars in the string also appear at the end
of the string, such as with "edited".
-}
import Control.Exception (assert)


frontAgain :: String -> Boolean
frontAgain str = undefined

main = do
    assert (frontAgain "edited" == true) (putStrLn "Test passed")
    assert (frontAgain "edit" == false) (putStrLn "Test passed")
    assert (frontAgain "ed" == true) (putStrLn "Test passed")
    assert (frontAgain "edited" == true) (putStrLn "Test passed")
    assert (frontAgain "edit" == false) (putStrLn "Test passed")
    assert (frontAgain "ed" == true) (putStrLn "Test passed")

