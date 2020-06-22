{-From https://codingbat.com/prob/p109660
Start with 2 int arrays, a and b, of any length. Return how many of the arrays have
1 as their first element.
-}
import Control.Exception (assert)


start1 :: [Int] -> [Int] -> Int
start1 a b = undefined

main :: IO ()
main = do
    assert (start1 [1,2,3] [1,3] == 2) (putStrLn "Test passed")
    assert (start1 [7,2,3] [1] == 1) (putStrLn "Test passed")
    assert (start1 [1,2] [] == 1) (putStrLn "Test passed")
    assert (start1 [1,2,3] [1,3] == 2) (putStrLn "Test passed")
    assert (start1 [7,2,3] [1] == 1) (putStrLn "Test passed")
    assert (start1 [1,2] [] == 1) (putStrLn "Test passed")

