{-From https://codingbat.com/prob/p144623
Given a string and an index, return a string length 2 starting at the given index. If
the index is too big or too small to define a string length 2, use the first 2 chars.
The string length will be at least 2.
-}
import Control.Exception (assert)


twoChar :: String -> Int -> String
twoChar str index = undefined

main :: IO ()
main = do
    assert (twoChar "java" 0 == "ja") (putStrLn "Test passed")
    assert (twoChar "java" 2 == "va") (putStrLn "Test passed")
    assert (twoChar "java" 3 == "ja") (putStrLn "Test passed")
    assert (twoChar "java" 0 == "ja") (putStrLn "Test passed")
    assert (twoChar "java" 2 == "va") (putStrLn "Test passed")
    assert (twoChar "java" 3 == "ja") (putStrLn "Test passed")

