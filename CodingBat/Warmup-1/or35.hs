{-From https://codingbat.com/prob/p112564
Return true if the given non-negative number is a multiple of 3 or a multiple of 5.
Use the % "mod" operator -- see Introduction to Mod
-}
import Control.Exception (assert)


or35 :: Int -> Boolean
or35 n = undefined

main = do
    assert (or35 3 == true) (putStrLn "Test passed")
    assert (or35 10 == true) (putStrLn "Test passed")
    assert (or35 8 == false) (putStrLn "Test passed")
    assert (or35 3 == true) (putStrLn "Test passed")
    assert (or35 10 == true) (putStrLn "Test passed")
    assert (or35 8 == false) (putStrLn "Test passed")

