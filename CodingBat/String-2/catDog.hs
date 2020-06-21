{-From https://codingbat.com/prob/p111624
Return true if the string "cat" and "dog" appear the same number of times in the given
string.
-}
import Control.Exception (assert)


catDog :: String -> Boolean
catDog str = undefined

main = do
    assert (catDog "catdog" == true) (putStrLn "Test passed")
    assert (catDog "catcat" == false) (putStrLn "Test passed")
    assert (catDog "1cat1cadodog" == true) (putStrLn "Test passed")
    assert (catDog "catdog" == true) (putStrLn "Test passed")
    assert (catDog "catcat" == false) (putStrLn "Test passed")
    assert (catDog "1cat1cadodog" == true) (putStrLn "Test passed")

