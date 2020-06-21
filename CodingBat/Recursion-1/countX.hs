{-From https://codingbat.com/prob/p170371
Given a string, compute recursively (no loops) the number of lowercase 'x' chars in the
string.
-}
import Control.Exception (assert)


countX :: String -> Int
countX str = undefined

main = do
    assert (countX "xxhixx" == 4) (putStrLn "Test passed")
    assert (countX "xhixhix" == 3) (putStrLn "Test passed")
    assert (countX "hi" == 0) (putStrLn "Test passed")
    assert (countX "xxhixx" == 4) (putStrLn "Test passed")
    assert (countX "xhixhix" == 3) (putStrLn "Test passed")
    assert (countX "hi" == 0) (putStrLn "Test passed")

