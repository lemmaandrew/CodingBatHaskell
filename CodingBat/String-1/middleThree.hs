{-From https://codingbat.com/prob/p115863
Given a string of odd length, return the string length 3 from its middle, so "Candy"
yields "and". The string length will be at least 3.
-}
import Control.Exception (assert)


middleThree :: String -> String
middleThree str = undefined

main = do
    assert (middleThree "Candy" == "and") (putStrLn "Test passed")
    assert (middleThree "and" == "and") (putStrLn "Test passed")
    assert (middleThree "solving" == "lvi") (putStrLn "Test passed")
    assert (middleThree "Candy" == "and") (putStrLn "Test passed")
    assert (middleThree "and" == "and") (putStrLn "Test passed")
    assert (middleThree "solving" == "lvi") (putStrLn "Test passed")

