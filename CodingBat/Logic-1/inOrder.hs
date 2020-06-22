{-From https://codingbat.com/prob/p154188
Given three ints, a b c, return true if b is greater than a, and c is greater than
b. However, with the exception that if "bOk" is true, b does not need to be greater
than a.
-}
import Control.Exception (assert)


inOrder :: Int -> Int -> Int -> Bool -> Bool
inOrder a b c bOk = undefined

main :: IO ()
main = do
    assert (inOrder 1 2 4 False == True) (putStrLn "Test passed")
    assert (inOrder 1 2 1 False == False) (putStrLn "Test passed")
    assert (inOrder 1 1 2 True == True) (putStrLn "Test passed")
    assert (inOrder 1 2 4 False == True) (putStrLn "Test passed")
    assert (inOrder 1 2 1 False == False) (putStrLn "Test passed")
    assert (inOrder 1 1 2 True == True) (putStrLn "Test passed")

