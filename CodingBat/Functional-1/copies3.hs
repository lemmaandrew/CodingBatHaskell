{-From https://codingbat.com/prob/p181634
Given a list of strings, return a list where each string is replaced by 3 copies of
the string concatenated together.
-}
import Control.Exception (assert)


copies3 :: [String] -> [String]
copies3 strings = undefined

main = do
    assert (copies3 ["a","bb","ccc"] == ["aaa","bbbbbb","ccccccccc"]) (putStrLn "Test passed")
    assert (copies3 ["24","a",""] == ["242424","aaa",""]) (putStrLn "Test passed")
    assert (copies3 ["hello","there"] == ["hellohellohello","theretherethere"]) (putStrLn "Test passed")
    assert (copies3 ["a","bb","ccc"] == ["aaa","bbbbbb","ccccccccc"]) (putStrLn "Test passed")
    assert (copies3 ["24","a",""] == ["242424","aaa",""]) (putStrLn "Test passed")
    assert (copies3 ["hello","there"] == ["hellohellohello","theretherethere"]) (putStrLn "Test passed")

