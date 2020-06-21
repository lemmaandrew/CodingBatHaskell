{-From https://codingbat.com/prob/p136594
Return true if the given string contains an appearance of "xyz" where the xyz is not
directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
-}
import Control.Exception (assert)


xyzThere :: String -> Boolean
xyzThere str = undefined

main = do
    assert (xyzThere "abcxyz" == true) (putStrLn "Test passed")
    assert (xyzThere "abc.xyz" == false) (putStrLn "Test passed")
    assert (xyzThere "xyz.abc" == true) (putStrLn "Test passed")
    assert (xyzThere "abcxyz" == true) (putStrLn "Test passed")
    assert (xyzThere "abc.xyz" == false) (putStrLn "Test passed")
    assert (xyzThere "xyz.abc" == true) (putStrLn "Test passed")

