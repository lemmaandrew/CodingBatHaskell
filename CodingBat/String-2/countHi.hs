{-From https://codingbat.com/prob/p147448
Return the number of times that the string "hi" appears anywhere in the given string.
-}
import Control.Exception (assert)


countHi :: String -> Int
countHi str = undefined

main :: IO ()
main = do
    assert (countHi "abchiho" == 1) (putStrLn "Test passed")
    assert (countHi "ABChihi" == 2) (putStrLn "Test passed")
    assert (countHi "hihi" == 2) (putStrLn "Test passed")
    assert (countHi "abchiho" == 1) (putStrLn "Test passed")
    assert (countHi "ABChihi" == 2) (putStrLn "Test passed")
    assert (countHi "hihi" == 2) (putStrLn "Test passed")

