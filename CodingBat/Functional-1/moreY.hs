{-From https://codingbat.com/prob/p177528
Given a list of strings, return a list where each string has "y" added at its start
and end.
-}
import Control.Exception (assert)


moreY :: [String] -> [String]
moreY strings = undefined

main :: IO ()
main = do
    assert (moreY ["a","b","c"] == ["yay","yby","ycy"]) (putStrLn "Test passed")
    assert (moreY ["hello","there"] == ["yhelloy","ytherey"]) (putStrLn "Test passed")
    assert (moreY ["yay"] == ["yyayy"]) (putStrLn "Test passed")
    assert (moreY ["a","b","c"] == ["yay","yby","ycy"]) (putStrLn "Test passed")
    assert (moreY ["hello","there"] == ["yhelloy","ytherey"]) (putStrLn "Test passed")
    assert (moreY ["yay"] == ["yyayy"]) (putStrLn "Test passed")

