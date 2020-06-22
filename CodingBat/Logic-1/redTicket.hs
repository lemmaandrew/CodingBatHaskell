{-From https://codingbat.com/prob/p170833
You have a red lottery ticket showing ints a, b, and c, each of which is 0, 1, or
2. If they are all the value 2, the result is 10. Otherwise if they are all the same,
the result is 5. Otherwise so long as both b and c are different from a, the result
is 1. Otherwise the result is 0.
-}
import Control.Exception (assert)


redTicket :: Int -> Int -> Int -> Int
redTicket a b c = undefined

main :: IO ()
main = do
    assert (redTicket 2 2 2 == 10) (putStrLn "Test passed")
    assert (redTicket 2 2 1 == 0) (putStrLn "Test passed")
    assert (redTicket 0 0 0 == 5) (putStrLn "Test passed")
    assert (redTicket 2 2 2 == 10) (putStrLn "Test passed")
    assert (redTicket 2 2 1 == 0) (putStrLn "Test passed")
    assert (redTicket 0 0 0 == 5) (putStrLn "Test passed")

