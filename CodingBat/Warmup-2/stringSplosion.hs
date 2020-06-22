{-From https://codingbat.com/prob/p117334
Given a non-empty string like "Code" return a string like "CCoCodCode".
-}
import Control.Exception (assert)


stringSplosion :: String -> String
stringSplosion str = undefined

main :: IO ()
main = do
    assert (stringSplosion "Code" == "CCoCodCode") (putStrLn "Test passed")
    assert (stringSplosion "abc" == "aababc") (putStrLn "Test passed")
    assert (stringSplosion "ab" == "aab") (putStrLn "Test passed")
    assert (stringSplosion "Code" == "CCoCodCode") (putStrLn "Test passed")
    assert (stringSplosion "abc" == "aababc") (putStrLn "Test passed")
    assert (stringSplosion "ab" == "aab") (putStrLn "Test passed")

