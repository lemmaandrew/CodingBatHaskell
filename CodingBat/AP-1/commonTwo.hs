{-From https://codingbat.com/prob/p100369
Start with two arrays of strings, a and b, each in alphabetical order, possibly with duplicates.
Return the count of the number of strings which appear in both arrays. The best "linear"
solution makes a single pass over both arrays, taking advantage of the fact that they
are in alphabetical order.
-}
import Control.Exception (assert)


commonTwo :: [String] -> [String] -> Int
commonTwo a b = undefined

main :: IO ()
main = do
    assert (commonTwo ["a","c","x"] ["b","c","d","x"] == 2) (putStrLn "Test passed")
    assert (commonTwo ["a","c","x"] ["a","b","c","x","z"] == 3) (putStrLn "Test passed")
    assert (commonTwo ["a","b","c"] ["a","b","c"] == 3) (putStrLn "Test passed")
    assert (commonTwo ["a","c","x"] ["b","c","d","x"] == 2) (putStrLn "Test passed")
    assert (commonTwo ["a","c","x"] ["a","b","c","x","z"] == 3) (putStrLn "Test passed")
    assert (commonTwo ["a","b","c"] ["a","b","c"] == 3) (putStrLn "Test passed")

