{-From https://codingbat.com/prob/p140449
We have a loud talking parrot. The "hour" parameter is the current hour time in the range
0..23. We are in trouble if the parrot is talking and the hour is before 7 or after
20. Return true if we are in trouble.
-}
import Control.Exception (assert)


parrotTrouble :: Boolean -> Int -> Boolean
parrotTrouble talking hour = undefined

main = do
    assert (parrotTrouble true 6 == true) (putStrLn "Test passed")
    assert (parrotTrouble true 7 == false) (putStrLn "Test passed")
    assert (parrotTrouble false 6 == false) (putStrLn "Test passed")
    assert (parrotTrouble true 6 == true) (putStrLn "Test passed")
    assert (parrotTrouble true 7 == false) (putStrLn "Test passed")
    assert (parrotTrouble false 6 == false) (putStrLn "Test passed")

