{-From https://codingbat.com/prob/p105671
Given a list of strings, return a list of the strings, omitting any string that contains
a "z". (Note: the str.contains(x) method returns a boolean)
-}
import Control.Exception (assert)


noZ :: [String] -> [String]
noZ strings = undefined

main = do
    assert (noZ ["aaa","bbb","aza"] == ["aaa","bbb"]) (putStrLn "Test passed")
    assert (noZ ["hziz","hzello","hi"] == ["hi"]) (putStrLn "Test passed")
    assert (noZ ["hello","howz","are","youz"] == ["hello","are"]) (putStrLn "Test passed")
    assert (noZ ["aaa","bbb","aza"] == ["aaa","bbb"]) (putStrLn "Test passed")
    assert (noZ ["hziz","hzello","hi"] == ["hi"]) (putStrLn "Test passed")
    assert (noZ ["hello","howz","are","youz"] == ["hello","are"]) (putStrLn "Test passed")

