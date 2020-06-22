{-From https://codingbat.com/prob/p140449
We have a loud talking parrot. The "hour" parameter is the current hour time in the range
0..23. We are in trouble if the parrot is talking and the hour is before 7 or after
20. Return true if we are in trouble.
-}
import Control.Exception (assert)


parrotTrouble :: Bool -> Int -> Bool
parrotTrouble talking hour = undefined

main :: IO ()
main = do
    assert (parrotTrouble True 6 == True) (putStrLn "Test passed")
    assert (parrotTrouble True 7 == False) (putStrLn "Test passed")
    assert (parrotTrouble False 6 == False) (putStrLn "Test passed")
    assert (parrotTrouble True 6 == True) (putStrLn "Test passed")
    assert (parrotTrouble True 7 == False) (putStrLn "Test passed")
    assert (parrotTrouble False 6 == False) (putStrLn "Test passed")

