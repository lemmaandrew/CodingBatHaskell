{-From https://codingbat.com/prob/p178728
Given 2 ints, a and b, return their sum. However, "teen" values in the range 13..19 inclusive,
are extra lucky. So if either value is a teen, just return 19.
-}
import Control.Exception (assert)


teenSum :: Int -> Int -> Int
teenSum a b = undefined

main = do
    assert (teenSum 3 4 == 7) (putStrLn "Test passed")
    assert (teenSum 10 13 == 19) (putStrLn "Test passed")
    assert (teenSum 13 2 == 19) (putStrLn "Test passed")
    assert (teenSum 3 4 == 7) (putStrLn "Test passed")
    assert (teenSum 10 13 == 19) (putStrLn "Test passed")
    assert (teenSum 13 2 == 19) (putStrLn "Test passed")

