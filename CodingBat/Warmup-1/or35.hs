{-From https://codingbat.com/prob/p112564
Return true if the given non-negative number is a multiple of 3 or a multiple of 5.
Use the % "mod" operator -- see Introduction to Mod
-}
import Control.Exception (assert)


or35 :: Int -> Bool
or35 n = undefined

main :: IO ()
main = do
    assert (or35 3 == True) (putStrLn "Test passed")
    assert (or35 10 == True) (putStrLn "Test passed")
    assert (or35 8 == False) (putStrLn "Test passed")
    assert (or35 3 == True) (putStrLn "Test passed")
    assert (or35 10 == True) (putStrLn "Test passed")
    assert (or35 8 == False) (putStrLn "Test passed")

