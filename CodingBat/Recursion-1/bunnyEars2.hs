{-From https://codingbat.com/prob/p107330
We have bunnies standing in a line, numbered 1, 2, ... The odd bunnies (1, 3, ..) have
the normal 2 ears. The even bunnies (2, 4, ..) we'll say have 3 ears, because they each
have a raised foot. Recursively return the number of "ears" in the bunny line 1, 2, ...
n (without loops or multiplication).
-}
import Control.Exception (assert)


bunnyEars2 :: Int -> Int
bunnyEars2 bunnies = undefined

main = do
    assert (bunnyEars2 0 == 0) (putStrLn "Test passed")
    assert (bunnyEars2 1 == 2) (putStrLn "Test passed")
    assert (bunnyEars2 2 == 5) (putStrLn "Test passed")
    assert (bunnyEars2 0 == 0) (putStrLn "Test passed")
    assert (bunnyEars2 1 == 2) (putStrLn "Test passed")
    assert (bunnyEars2 2 == 5) (putStrLn "Test passed")

