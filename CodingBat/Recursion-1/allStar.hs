{-From https://codingbat.com/prob/p183394
Given a string, compute recursively a new string where all the adjacent chars are now
separated by a "*".
-}
import Control.Exception (assert)


allStar :: String -> String
allStar str = undefined

main = do
    assert (allStar "hello" == "h*e*l*l*o") (putStrLn "Test passed")
    assert (allStar "abc" == "a*b*c") (putStrLn "Test passed")
    assert (allStar "ab" == "a*b") (putStrLn "Test passed")
    assert (allStar "hello" == "h*e*l*l*o") (putStrLn "Test passed")
    assert (allStar "abc" == "a*b*c") (putStrLn "Test passed")
    assert (allStar "ab" == "a*b") (putStrLn "Test passed")

