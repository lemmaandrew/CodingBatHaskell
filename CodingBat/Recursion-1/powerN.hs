{-From https://codingbat.com/prob/p158888
Given base and n that are both 1 or more, compute recursively (no loops) the value of
base to the n power, so powerN(3, 2) is 9 (3 squared).
-}
import Control.Exception (assert)


powerN :: Int -> Int -> Int
powerN base n = undefined

main = do
    assert (powerN 3 1 == 3) (putStrLn "Test passed")
    assert (powerN 3 2 == 9) (putStrLn "Test passed")
    assert (powerN 3 3 == 27) (putStrLn "Test passed")
    assert (powerN 3 1 == 3) (putStrLn "Test passed")
    assert (powerN 3 2 == 9) (putStrLn "Test passed")
    assert (powerN 3 3 == 27) (putStrLn "Test passed")

