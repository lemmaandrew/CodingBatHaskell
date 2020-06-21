{-From https://codingbat.com/prob/p183071
Given 2 ints, a and b, return their sum. However, sums in the range 10..19 inclusive,
are forbidden, so in that case just return 20.
-}
import Control.Exception (assert)


sortaSum :: Int -> Int -> Int
sortaSum a b = undefined

main = do
    assert (sortaSum 3 4 == 7) (putStrLn "Test passed")
    assert (sortaSum 9 4 == 20) (putStrLn "Test passed")
    assert (sortaSum 10 11 == 21) (putStrLn "Test passed")
    assert (sortaSum 3 4 == 7) (putStrLn "Test passed")
    assert (sortaSum 9 4 == 20) (putStrLn "Test passed")
    assert (sortaSum 10 11 == 21) (putStrLn "Test passed")

