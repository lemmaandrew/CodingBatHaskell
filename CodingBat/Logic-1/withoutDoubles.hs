{-From https://codingbat.com/prob/p115233
Return the sum of two 6-sided dice rolls, each in the range 1..6. However, if noDoubles
is true, if the two dice show the same value, increment one die to the next value, wrapping
around to 1 if its value was 6.
-}
import Control.Exception (assert)


withoutDoubles :: Int -> Int -> Bool -> Int
withoutDoubles die1 die2 noDoubles = undefined

main :: IO ()
main = do
    assert (withoutDoubles 2 3 True == 5) (putStrLn "Test passed")
    assert (withoutDoubles 3 3 True == 7) (putStrLn "Test passed")
    assert (withoutDoubles 3 3 False == 6) (putStrLn "Test passed")
    assert (withoutDoubles 2 3 True == 5) (putStrLn "Test passed")
    assert (withoutDoubles 3 3 True == 7) (putStrLn "Test passed")
    assert (withoutDoubles 3 3 False == 6) (putStrLn "Test passed")
