{-From https://codingbat.com/prob/p159612
Return true if the given non-negative number is a multiple of 3 or 5, but not both.
Use the % "mod" operator -- see Introduction to Mod
-}
import Control.Exception (assert)


old35 :: Int -> Boolean
old35 n = undefined

main = do
    assert (old35 3 == true) (putStrLn "Test passed")
    assert (old35 10 == true) (putStrLn "Test passed")
    assert (old35 15 == false) (putStrLn "Test passed")
    assert (old35 3 == true) (putStrLn "Test passed")
    assert (old35 10 == true) (putStrLn "Test passed")
    assert (old35 15 == false) (putStrLn "Test passed")

