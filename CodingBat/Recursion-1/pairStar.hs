{-From https://codingbat.com/prob/p158175
Given a string, compute recursively a new string where identical chars that are adjacent
in the original string are separated from each other by a "*".
-}
import Control.Exception (assert)


pairStar :: String -> String
pairStar str = undefined

main = do
    assert (pairStar "hello" == "hel*lo") (putStrLn "Test passed")
    assert (pairStar "xxyy" == "x*xy*y") (putStrLn "Test passed")
    assert (pairStar "aaaa" == "a*a*a*a") (putStrLn "Test passed")
    assert (pairStar "hello" == "hel*lo") (putStrLn "Test passed")
    assert (pairStar "xxyy" == "x*xy*y") (putStrLn "Test passed")
    assert (pairStar "aaaa" == "a*a*a*a") (putStrLn "Test passed")

