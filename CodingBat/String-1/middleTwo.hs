{-From https://codingbat.com/prob/p137729
Given a string of even length, return a string made of the middle two chars, so the
string "string" yields "ri". The string length will be at least 2.
-}
import Control.Exception (assert)


middleTwo :: String -> String
middleTwo str = undefined

main = do
    assert (middleTwo "string" == "ri") (putStrLn "Test passed")
    assert (middleTwo "code" == "od") (putStrLn "Test passed")
    assert (middleTwo "Practice" == "ct") (putStrLn "Test passed")
    assert (middleTwo "string" == "ri") (putStrLn "Test passed")
    assert (middleTwo "code" == "od") (putStrLn "Test passed")
    assert (middleTwo "Practice" == "ct") (putStrLn "Test passed")

