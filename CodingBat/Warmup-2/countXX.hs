{-From https://codingbat.com/prob/p194667
Count the number of "xx" in the given string. We'll say that overlapping is allowed, so
"xxx" contains 2 "xx".
-}
import Control.Exception (assert)


countXX :: String -> Int
countXX str = undefined

main :: IO ()
main = do
    assert (countXX "abcxx" == 1) (putStrLn "Test passed")
    assert (countXX "xxx" == 2) (putStrLn "Test passed")
    assert (countXX "xxxx" == 3) (putStrLn "Test passed")
    assert (countXX "abcxx" == 1) (putStrLn "Test passed")
    assert (countXX "xxx" == 2) (putStrLn "Test passed")
    assert (countXX "xxxx" == 3) (putStrLn "Test passed")

