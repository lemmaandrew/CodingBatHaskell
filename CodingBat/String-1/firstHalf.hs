{-From https://codingbat.com/prob/p172267
Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
-}
import Control.Exception (assert)


firstHalf :: String -> String
firstHalf str = undefined

main = do
    assert (firstHalf "WooHoo" == "Woo") (putStrLn "Test passed")
    assert (firstHalf "HelloThere" == "Hello") (putStrLn "Test passed")
    assert (firstHalf "abcdef" == "abc") (putStrLn "Test passed")
    assert (firstHalf "WooHoo" == "Woo") (putStrLn "Test passed")
    assert (firstHalf "HelloThere" == "Hello") (putStrLn "Test passed")
    assert (firstHalf "abcdef" == "abc") (putStrLn "Test passed")

