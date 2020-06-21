{-From https://codingbat.com/prob/p120633
You have a green lottery ticket, with ints a, b, and c on it. If the numbers are all
different from each other, the result is 0. If all of the numbers are the same, the
result is 20. If two of the numbers are the same, the result is 10.
-}
import Control.Exception (assert)


greenTicket :: Int -> Int -> Int -> Int
greenTicket a b c = undefined

main = do
    assert (greenTicket 1 2 3 == 0) (putStrLn "Test passed")
    assert (greenTicket 2 2 2 == 20) (putStrLn "Test passed")
    assert (greenTicket 1 1 2 == 10) (putStrLn "Test passed")
    assert (greenTicket 1 2 3 == 0) (putStrLn "Test passed")
    assert (greenTicket 2 2 2 == 20) (putStrLn "Test passed")
    assert (greenTicket 1 1 2 == 10) (putStrLn "Test passed")

