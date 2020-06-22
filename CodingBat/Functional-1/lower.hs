{-From https://codingbat.com/prob/p186894
Given a list of strings, return a list where each string is converted to lower case (Note:
String toLowerCase() method).
-}
import Control.Exception (assert)


lower :: [String] -> [String]
lower strings = undefined

main :: IO ()
main = do
    assert (lower ["Hello","Hi"] == ["hello","hi"]) (putStrLn "Test passed")
    assert (lower ["AAA","BBB","ccc"] == ["aaa","bbb","ccc"]) (putStrLn "Test passed")
    assert (lower ["KitteN","ChocolaTE"] == ["kitten","chocolate"]) (putStrLn "Test passed")
    assert (lower ["Hello","Hi"] == ["hello","hi"]) (putStrLn "Test passed")
    assert (lower ["AAA","BBB","ccc"] == ["aaa","bbb","ccc"]) (putStrLn "Test passed")
    assert (lower ["KitteN","ChocolaTE"] == ["kitten","chocolate"]) (putStrLn "Test passed")

