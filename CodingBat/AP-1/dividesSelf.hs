{-From https://codingbat.com/prob/p165941
We'll say that a positive int divides itself if every digit in the number divides into
the number evenly. So for example 128 divides itself since 1, 2, and 8 all divide into
128 evenly. We'll say that 0 does not divide into anything evenly, so no number with
a 0 digit divides itself. Note: use % to get the rightmost digit, and / to discard the
rightmost digit.
-}
import Control.Exception (assert)


dividesSelf :: Int -> Boolean
dividesSelf n = undefined

main = do
    assert (dividesSelf 128 == true) (putStrLn "Test passed")
    assert (dividesSelf 12 == true) (putStrLn "Test passed")
    assert (dividesSelf 120 == false) (putStrLn "Test passed")
    assert (dividesSelf 128 == true) (putStrLn "Test passed")
    assert (dividesSelf 12 == true) (putStrLn "Test passed")
    assert (dividesSelf 120 == false) (putStrLn "Test passed")

