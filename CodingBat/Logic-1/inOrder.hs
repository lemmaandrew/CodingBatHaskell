{-From https://codingbat.com/prob/p154188
Given three ints, a b c, return true if b is greater than a, and c is greater than
b. However, with the exception that if "bOk" is true, b does not need to be greater
than a.
-}
import Control.Exception (assert)


inOrder :: Int -> Int -> Int -> Boolean -> Boolean
inOrder a b c bOk = undefined

main = do
    assert (inOrder 1 2 4 false == true) (putStrLn "Test passed")
    assert (inOrder 1 2 1 false == false) (putStrLn "Test passed")
    assert (inOrder 1 1 2 true == true) (putStrLn "Test passed")
    assert (inOrder 1 2 4 false == true) (putStrLn "Test passed")
    assert (inOrder 1 2 1 false == false) (putStrLn "Test passed")
    assert (inOrder 1 1 2 true == true) (putStrLn "Test passed")

