{-From https://codingbat.com/prob/p194781
We have triangle made of blocks. The topmost row has 1 block, the next row down has
2 blocks, the next row has 3 blocks, and so on. Compute recursively (no loops or multiplication)
the total number of blocks in such a triangle with the given number of rows.
-}
import Control.Exception (assert)


triangle :: Int -> Int
triangle rows = undefined

main = do
    assert (triangle 0 == 0) (putStrLn "Test passed")
    assert (triangle 1 == 1) (putStrLn "Test passed")
    assert (triangle 2 == 3) (putStrLn "Test passed")
    assert (triangle 0 == 0) (putStrLn "Test passed")
    assert (triangle 1 == 1) (putStrLn "Test passed")
    assert (triangle 2 == 3) (putStrLn "Test passed")

