{-From https://codingbat.com/prob/p170924
Given a string, compute recursively (no loops) a new string where all appearances of "pi"
have been replaced by "3.14".
-}
import Control.Exception (assert)


changePi :: String -> String
changePi str = undefined

main :: IO ()
main = do
    assert (changePi "xpix" == "x3.14x") (putStrLn "Test passed")
    assert (changePi "pipi" == "3.143.14") (putStrLn "Test passed")
    assert (changePi "pip" == "3.14p") (putStrLn "Test passed")
    assert (changePi "xpix" == "x3.14x") (putStrLn "Test passed")
    assert (changePi "pipi" == "3.143.14") (putStrLn "Test passed")
    assert (changePi "pip" == "3.14p") (putStrLn "Test passed")

