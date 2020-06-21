{-From https://codingbat.com/prob/p170181
Given a list of strings, return a list where each string has "*" added at its end.
-}
import Control.Exception (assert)


addStar :: [String] -> [String]
addStar strings = undefined

main = do
    assert (addStar ["a","bb","ccc"] == ["a*","bb*","ccc*"]) (putStrLn "Test passed")
    assert (addStar ["hello","there"] == ["hello*","there*"]) (putStrLn "Test passed")
    assert (addStar ["*"] == ["**"]) (putStrLn "Test passed")
    assert (addStar ["a","bb","ccc"] == ["a*","bb*","ccc*"]) (putStrLn "Test passed")
    assert (addStar ["hello","there"] == ["hello*","there*"]) (putStrLn "Test passed")
    assert (addStar ["*"] == ["**"]) (putStrLn "Test passed")

