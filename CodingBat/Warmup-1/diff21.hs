{-From https://codingbat.com/prob/p116624
Given an int n, return the absolute difference between n and 21, except return double
the absolute difference if n is over 21.
-}
import Control.Exception (assert)


diff21 :: Int -> Int
diff21 n = undefined

main :: IO ()
main = do
    assert (diff21 19 == 2) (putStrLn "Test passed")
    assert (diff21 10 == 11) (putStrLn "Test passed")
    assert (diff21 21 == 0) (putStrLn "Test passed")
    assert (diff21 19 == 2) (putStrLn "Test passed")
    assert (diff21 10 == 11) (putStrLn "Test passed")
    assert (diff21 21 == 0) (putStrLn "Test passed")

