{-From https://codingbat.com/prob/p167015
Given a string, compute recursively (no loops) the number of "11" substrings in the string.
The "11" substrings should not overlap.
-}
import Control.Exception (assert)


count11 :: String -> Int
count11 str = undefined

main :: IO ()
main = do
    assert (count11 "11abc11" == 2) (putStrLn "Test passed")
    assert (count11 "abc11x11x11" == 3) (putStrLn "Test passed")
    assert (count11 "111" == 1) (putStrLn "Test passed")
    assert (count11 "11abc11" == 2) (putStrLn "Test passed")
    assert (count11 "abc11x11x11" == 3) (putStrLn "Test passed")
    assert (count11 "111" == 1) (putStrLn "Test passed")

