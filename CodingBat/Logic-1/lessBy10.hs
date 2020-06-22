{-From https://codingbat.com/prob/p179196
Given three ints, a b c, return true if one of them is 10 or more less than one of
the others.
-}
import Control.Exception (assert)


lessBy10 :: Int -> Int -> Int -> Bool
lessBy10 a b c = undefined

main :: IO ()
main = do
    assert (lessBy10 1 7 11 == True) (putStrLn "Test passed")
    assert (lessBy10 1 7 10 == False) (putStrLn "Test passed")
    assert (lessBy10 11 1 7 == True) (putStrLn "Test passed")
    assert (lessBy10 1 7 11 == True) (putStrLn "Test passed")
    assert (lessBy10 1 7 10 == False) (putStrLn "Test passed")
    assert (lessBy10 11 1 7 == True) (putStrLn "Test passed")

