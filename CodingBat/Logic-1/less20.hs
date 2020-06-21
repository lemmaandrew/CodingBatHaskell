{-From https://codingbat.com/prob/p133158
Return true if the given non-negative number is 1 or 2 less than a multiple of 20. So
for example 38 and 39 return true, but 40 returns false. See also: Introduction to Mod
-}
import Control.Exception (assert)


less20 :: Int -> Boolean
less20 n = undefined

main = do
    assert (less20 18 == true) (putStrLn "Test passed")
    assert (less20 19 == true) (putStrLn "Test passed")
    assert (less20 20 == false) (putStrLn "Test passed")
    assert (less20 18 == true) (putStrLn "Test passed")
    assert (less20 19 == true) (putStrLn "Test passed")
    assert (less20 20 == false) (putStrLn "Test passed")

