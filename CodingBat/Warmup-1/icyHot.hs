{-From https://codingbat.com/prob/p192082
Given two temperatures, return true if one is less than 0 and the other is greater than
100.
-}
import Control.Exception (assert)


icyHot :: Int -> Int -> Bool
icyHot temp1 temp2 = undefined

main :: IO ()
main = do
    assert (icyHot 120 (-1) == True) (putStrLn "Test passed")
    assert (icyHot (-1) 120 == True) (putStrLn "Test passed")
    assert (icyHot 2 120 == False) (putStrLn "Test passed")
    assert (icyHot 120 (-1) == True) (putStrLn "Test passed")
    assert (icyHot (-1) 120 == True) (putStrLn "Test passed")
    assert (icyHot 2 120 == False) (putStrLn "Test passed")

