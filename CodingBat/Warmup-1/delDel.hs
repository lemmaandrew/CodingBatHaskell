{-From https://codingbat.com/prob/p100905
Given a string, if the string "del" appears starting at index 1, return a string where
that "del" has been deleted. Otherwise, return the string unchanged.
-}
import Control.Exception (assert)


delDel :: String -> String
delDel str = undefined

main :: IO ()
main = do
    assert (delDel "adelbc" == "abc") (putStrLn "Test passed")
    assert (delDel "adelHello" == "aHello") (putStrLn "Test passed")
    assert (delDel "adedbc" == "adedbc") (putStrLn "Test passed")
    assert (delDel "adelbc" == "abc") (putStrLn "Test passed")
    assert (delDel "adelHello" == "aHello") (putStrLn "Test passed")
    assert (delDel "adedbc" == "adedbc") (putStrLn "Test passed")

