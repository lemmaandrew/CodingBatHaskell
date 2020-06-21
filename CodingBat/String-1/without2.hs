{-From https://codingbat.com/prob/p142247
Given a string, if a length 2 substring appears at both its beginning and end, return
a string without the substring at the beginning, so "HelloHe" yields "lloHe". The substring
may overlap with itself, so "Hi" yields "". Otherwise, return the original string unchanged.
-}
import Control.Exception (assert)


without2 :: String -> String
without2 str = undefined

main = do
    assert (without2 "HelloHe" == "lloHe") (putStrLn "Test passed")
    assert (without2 "HelloHi" == "HelloHi") (putStrLn "Test passed")
    assert (without2 "Hi" == "") (putStrLn "Test passed")
    assert (without2 "HelloHe" == "lloHe") (putStrLn "Test passed")
    assert (without2 "HelloHi" == "HelloHi") (putStrLn "Test passed")
    assert (without2 "Hi" == "") (putStrLn "Test passed")

