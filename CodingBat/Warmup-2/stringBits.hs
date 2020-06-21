{-From https://codingbat.com/prob/p165666
Given a string, return a new string made of every other char starting with the first,
so "Hello" yields "Hlo".
-}
import Control.Exception (assert)


stringBits :: String -> String
stringBits str = undefined

main = do
    assert (stringBits "Hello" == "Hlo") (putStrLn "Test passed")
    assert (stringBits "Hi" == "H") (putStrLn "Test passed")
    assert (stringBits "Heeololeo" == "Hello") (putStrLn "Test passed")
    assert (stringBits "Hello" == "Hlo") (putStrLn "Test passed")
    assert (stringBits "Hi" == "H") (putStrLn "Test passed")
    assert (stringBits "Heeololeo" == "Hello") (putStrLn "Test passed")

