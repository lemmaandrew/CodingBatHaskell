{-From https://codingbat.com/prob/p123384
Given a string, return a new string where the first and last chars have been exchanged.
-}
import Control.Exception (assert)


frontBack :: String -> String
frontBack str = undefined

main :: IO ()
main = do
    assert (frontBack "code" == "eodc") (putStrLn "Test passed")
    assert (frontBack "a" == "a") (putStrLn "Test passed")
    assert (frontBack "ab" == "ba") (putStrLn "Test passed")
    assert (frontBack "code" == "eodc") (putStrLn "Test passed")
    assert (frontBack "a" == "a") (putStrLn "Test passed")
    assert (frontBack "ab" == "ba") (putStrLn "Test passed")

