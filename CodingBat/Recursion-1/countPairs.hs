{-From https://codingbat.com/prob/p154048
We'll say that a "pair" in a string is two instances of a char separated by a char.
So "AxA" the A's make a pair. Pair's can overlap, so "AxAxA" contains 3 pairs -- 2 for
A and 1 for x. Recursively compute the number of pairs in the given string.
-}
import Control.Exception (assert)


countPairs :: String -> Int
countPairs str = undefined

main :: IO ()
main = do
    assert (countPairs "axa" == 1) (putStrLn "Test passed")
    assert (countPairs "axax" == 2) (putStrLn "Test passed")
    assert (countPairs "axbx" == 1) (putStrLn "Test passed")
    assert (countPairs "axa" == 1) (putStrLn "Test passed")
    assert (countPairs "axax" == 2) (putStrLn "Test passed")
    assert (countPairs "axbx" == 1) (putStrLn "Test passed")

