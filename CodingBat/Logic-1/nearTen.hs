{-From https://codingbat.com/prob/p193613
Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction
to Mod
-}
import Control.Exception (assert)


nearTen :: Int -> Bool
nearTen num = undefined

main :: IO ()
main = do
    assert (nearTen 12 == True) (putStrLn "Test passed")
    assert (nearTen 17 == False) (putStrLn "Test passed")
    assert (nearTen 19 == True) (putStrLn "Test passed")
    assert (nearTen 12 == True) (putStrLn "Test passed")
    assert (nearTen 17 == False) (putStrLn "Test passed")
    assert (nearTen 19 == True) (putStrLn "Test passed")

