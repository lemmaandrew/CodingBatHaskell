{-From https://codingbat.com/prob/p178318
Given a string, return the count of the number of times that a substring length 2 appears
in the string and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we
won't count the end substring).
-}
import Control.Exception (assert)


last2 :: String -> Int
last2 str = undefined

main = do
    assert (last2 "hixxhi" == 1) (putStrLn "Test passed")
    assert (last2 "xaxxaxaxx" == 1) (putStrLn "Test passed")
    assert (last2 "axxxaaxx" == 2) (putStrLn "Test passed")
    assert (last2 "hixxhi" == 1) (putStrLn "Test passed")
    assert (last2 "xaxxaxaxx" == 1) (putStrLn "Test passed")
    assert (last2 "axxxaaxx" == 2) (putStrLn "Test passed")

