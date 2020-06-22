{-From https://codingbat.com/prob/p196652
Given a string, return true if the first 2 chars in the string also appear at the end
of the string, such as with "edited".
-}
import Control.Exception (assert)


frontAgain :: String -> Bool
frontAgain str = undefined

main :: IO ()
main = do
    assert (frontAgain "edited" == True) (putStrLn "Test passed")
    assert (frontAgain "edit" == False) (putStrLn "Test passed")
    assert (frontAgain "ed" == True) (putStrLn "Test passed")
    assert (frontAgain "edited" == True) (putStrLn "Test passed")
    assert (frontAgain "edit" == False) (putStrLn "Test passed")
    assert (frontAgain "ed" == True) (putStrLn "Test passed")

