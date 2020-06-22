{-From https://codingbat.com/prob/p136594
Return true if the given string contains an appearance of "xyz" where the xyz is not
directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
-}
import Control.Exception (assert)


xyzThere :: String -> Bool
xyzThere str = undefined

main :: IO ()
main = do
    assert (xyzThere "abcxyz" == True) (putStrLn "Test passed")
    assert (xyzThere "abc.xyz" == False) (putStrLn "Test passed")
    assert (xyzThere "xyz.abc" == True) (putStrLn "Test passed")
    assert (xyzThere "abcxyz" == True) (putStrLn "Test passed")
    assert (xyzThere "abc.xyz" == False) (putStrLn "Test passed")
    assert (xyzThere "xyz.abc" == True) (putStrLn "Test passed")

