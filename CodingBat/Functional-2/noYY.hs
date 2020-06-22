{-From https://codingbat.com/prob/p115967
Given a list of strings, return a list where each string has "y" added at its end, omitting
any resulting strings that contain "yy" as a substring anywhere.
-}
import Control.Exception (assert)


noYY :: [String] -> [String]
noYY strings = undefined

main :: IO ()
main = do
    assert (noYY ["a","b","c"] == ["ay","by","cy"]) (putStrLn "Test passed")
    assert (noYY ["a","b","cy"] == ["ay","by"]) (putStrLn "Test passed")
    assert (noYY ["xx","ya","zz"] == ["xxy","yay","zzy"]) (putStrLn "Test passed")
    assert (noYY ["a","b","c"] == ["ay","by","cy"]) (putStrLn "Test passed")
    assert (noYY ["a","b","cy"] == ["ay","by"]) (putStrLn "Test passed")
    assert (noYY ["xx","ya","zz"] == ["xxy","yay","zzy"]) (putStrLn "Test passed")

