{-From https://codingbat.com/prob/p198700
Given three ints, a b c, one of them is small, one is medium and one is large. Return
true if the three values are evenly spaced, so the difference between small and medium
is the same as the difference between medium and large.
-}
import Control.Exception (assert)


evenlySpaced :: Int -> Int -> Int -> Boolean
evenlySpaced a b c = undefined

main = do
    assert (evenlySpaced 2 4 6 == true) (putStrLn "Test passed")
    assert (evenlySpaced 4 6 2 == true) (putStrLn "Test passed")
    assert (evenlySpaced 4 6 3 == false) (putStrLn "Test passed")
    assert (evenlySpaced 2 4 6 == true) (putStrLn "Test passed")
    assert (evenlySpaced 4 6 2 == true) (putStrLn "Test passed")
    assert (evenlySpaced 4 6 3 == false) (putStrLn "Test passed")

