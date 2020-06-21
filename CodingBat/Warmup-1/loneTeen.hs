{-From https://codingbat.com/prob/p165701
We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 2 int
values, return true if one or the other is teen, but not both.
-}
import Control.Exception (assert)


loneTeen :: Int -> Int -> Boolean
loneTeen a b = undefined

main = do
    assert (loneTeen 13 99 == true) (putStrLn "Test passed")
    assert (loneTeen 21 19 == true) (putStrLn "Test passed")
    assert (loneTeen 13 13 == false) (putStrLn "Test passed")
    assert (loneTeen 13 99 == true) (putStrLn "Test passed")
    assert (loneTeen 21 19 == true) (putStrLn "Test passed")
    assert (loneTeen 13 13 == false) (putStrLn "Test passed")

