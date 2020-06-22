{-From https://codingbat.com/prob/p104029
Given a string, return recursively a "cleaned" string where adjacent chars that are the
same have been reduced to a single char. So "yyzzza" yields "yza".
-}
import Control.Exception (assert)


stringClean :: String -> String
stringClean str = undefined

main :: IO ()
main = do
    assert (stringClean "yyzzza" == "yza") (putStrLn "Test passed")
    assert (stringClean "abbbcdd" == "abcd") (putStrLn "Test passed")
    assert (stringClean "Hello" == "Helo") (putStrLn "Test passed")
    assert (stringClean "yyzzza" == "yza") (putStrLn "Test passed")
    assert (stringClean "abbbcdd" == "abcd") (putStrLn "Test passed")
    assert (stringClean "Hello" == "Helo") (putStrLn "Test passed")

