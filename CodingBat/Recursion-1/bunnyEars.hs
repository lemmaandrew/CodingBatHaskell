{-From https://codingbat.com/prob/p183649
We have a number of bunnies and each bunny has two big floppy ears. We want to compute
the total number of ears across all the bunnies recursively (without loops or multiplication).
-}
import Control.Exception (assert)


bunnyEars :: Int -> Int
bunnyEars bunnies = undefined

main = do
    assert (bunnyEars 0 == 0) (putStrLn "Test passed")
    assert (bunnyEars 1 == 2) (putStrLn "Test passed")
    assert (bunnyEars 2 == 4) (putStrLn "Test passed")
    assert (bunnyEars 0 == 0) (putStrLn "Test passed")
    assert (bunnyEars 1 == 2) (putStrLn "Test passed")
    assert (bunnyEars 2 == 4) (putStrLn "Test passed")

