{-From https://codingbat.com/prob/p118290
Return true if the given non-negative number is 1 or 2 more than a multiple of 20. See
also: Introduction to Mod
-}
import Control.Exception (assert)


more20 :: Int -> Boolean
more20 n = undefined

main = do
    assert (more20 20 == false) (putStrLn "Test passed")
    assert (more20 21 == true) (putStrLn "Test passed")
    assert (more20 22 == true) (putStrLn "Test passed")
    assert (more20 20 == false) (putStrLn "Test passed")
    assert (more20 21 == true) (putStrLn "Test passed")
    assert (more20 22 == true) (putStrLn "Test passed")

