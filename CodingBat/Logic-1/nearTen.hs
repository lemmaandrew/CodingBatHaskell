{-From https://codingbat.com/prob/p193613
Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction
to Mod
-}
import Control.Exception (assert)


nearTen :: Int -> Boolean
nearTen num = undefined

main = do
    assert (nearTen 12 == true) (putStrLn "Test passed")
    assert (nearTen 17 == false) (putStrLn "Test passed")
    assert (nearTen 19 == true) (putStrLn "Test passed")
    assert (nearTen 12 == true) (putStrLn "Test passed")
    assert (nearTen 17 == false) (putStrLn "Test passed")
    assert (nearTen 19 == true) (putStrLn "Test passed")

