{-From https://codingbat.com/prob/p111624
Return true if the string "cat" and "dog" appear the same number of times in the given
string.
-}
import Control.Exception (assert)


catDog :: String -> Bool
catDog str = undefined

main :: IO ()
main = do
    assert (catDog "catdog" == True) (putStrLn "Test passed")
    assert (catDog "catcat" == False) (putStrLn "Test passed")
    assert (catDog "1cat1cadodog" == True) (putStrLn "Test passed")
    assert (catDog "catdog" == True) (putStrLn "Test passed")
    assert (catDog "catcat" == False) (putStrLn "Test passed")
    assert (catDog "1cat1cadodog" == True) (putStrLn "Test passed")

