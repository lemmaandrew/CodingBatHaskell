{-From https://codingbat.com/prob/p140272
Given three ints, a b c, return true if they are in strict increasing order, such as
2 5 11, or 5 6 7, but not 6 5 7 or 5 5 7. However, with the exception that if "equalOk"
is true, equality is allowed, such as 5 5 7 or 5 5 5.
-}
import Control.Exception (assert)


inOrderEqual :: Int -> Int -> Int -> Boolean -> Boolean
inOrderEqual a b c equalOk = undefined

main = do
    assert (inOrderEqual 2 5 11 false == true) (putStrLn "Test passed")
    assert (inOrderEqual 5 7 6 false == false) (putStrLn "Test passed")
    assert (inOrderEqual 5 5 7 true == true) (putStrLn "Test passed")
    assert (inOrderEqual 2 5 11 false == true) (putStrLn "Test passed")
    assert (inOrderEqual 5 7 6 false == false) (putStrLn "Test passed")
    assert (inOrderEqual 5 5 7 true == true) (putStrLn "Test passed")

