{-From https://codingbat.com/prob/p161124
Count recursively the total number of "abc" and "aba" substrings that appear in the given
string.
-}
import Control.Exception (assert)


countAbc :: String -> Int
countAbc str = undefined

main :: IO ()
main = do
    assert (countAbc "abc" == 1) (putStrLn "Test passed")
    assert (countAbc "abcxxabc" == 2) (putStrLn "Test passed")
    assert (countAbc "abaxxaba" == 2) (putStrLn "Test passed")
    assert (countAbc "abc" == 1) (putStrLn "Test passed")
    assert (countAbc "abcxxabc" == 2) (putStrLn "Test passed")
    assert (countAbc "abaxxaba" == 2) (putStrLn "Test passed")

