{-From https://codingbat.com/prob/p134250
We'll say that a String is xy-balanced if for all the 'x' chars in the string, there
exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
-}
import Control.Exception (assert)


xyBalance :: String -> Boolean
xyBalance str = undefined

main = do
    assert (xyBalance "aaxbby" == true) (putStrLn "Test passed")
    assert (xyBalance "aaxbb" == false) (putStrLn "Test passed")
    assert (xyBalance "yaaxbb" == false) (putStrLn "Test passed")
    assert (xyBalance "aaxbby" == true) (putStrLn "Test passed")
    assert (xyBalance "aaxbb" == false) (putStrLn "Test passed")
    assert (xyBalance "yaaxbb" == false) (putStrLn "Test passed")

