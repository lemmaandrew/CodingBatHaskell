{-From https://codingbat.com/prob/p101887
Given three int values, a b c, return the largest.
-}
import Control.Exception (assert)


intMax :: Int -> Int -> Int -> Int
intMax a b c = undefined

main :: IO ()
main = do
    assert (intMax 1 2 3 == 3) (putStrLn "Test passed")
    assert (intMax 1 3 2 == 3) (putStrLn "Test passed")
    assert (intMax 3 2 1 == 3) (putStrLn "Test passed")
    assert (intMax 1 2 3 == 3) (putStrLn "Test passed")
    assert (intMax 1 3 2 == 3) (putStrLn "Test passed")
    assert (intMax 3 2 1 == 3) (putStrLn "Test passed")

