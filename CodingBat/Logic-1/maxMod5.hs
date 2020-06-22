{-From https://codingbat.com/prob/p115384
Given two int values, return whichever value is larger. However if the two values have
the same remainder when divided by 5, then the return the smaller value. However, in all
cases, if the two values are the same, return 0. Note: the % "mod" operator computes
the remainder, e.g. 7 % 5 is 2.
-}
import Control.Exception (assert)


maxMod5 :: Int -> Int -> Int
maxMod5 a b = undefined

main :: IO ()
main = do
    assert (maxMod5 2 3 == 3) (putStrLn "Test passed")
    assert (maxMod5 6 2 == 6) (putStrLn "Test passed")
    assert (maxMod5 3 2 == 3) (putStrLn "Test passed")
    assert (maxMod5 2 3 == 3) (putStrLn "Test passed")
    assert (maxMod5 6 2 == 6) (putStrLn "Test passed")
    assert (maxMod5 3 2 == 3) (putStrLn "Test passed")

