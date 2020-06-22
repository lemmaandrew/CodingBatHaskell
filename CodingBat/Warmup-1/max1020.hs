{-From https://codingbat.com/prob/p177372
Given 2 positive int values, return the larger value that is in the range 10..20 inclusive,
or return 0 if neither is in that range.
-}
import Control.Exception (assert)


max1020 :: Int -> Int -> Int
max1020 a b = undefined

main :: IO ()
main = do
    assert (max1020 11 19 == 19) (putStrLn "Test passed")
    assert (max1020 19 11 == 19) (putStrLn "Test passed")
    assert (max1020 11 9 == 11) (putStrLn "Test passed")
    assert (max1020 11 19 == 19) (putStrLn "Test passed")
    assert (max1020 19 11 == 19) (putStrLn "Test passed")
    assert (max1020 11 9 == 11) (putStrLn "Test passed")

