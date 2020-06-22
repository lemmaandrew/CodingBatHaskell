{-From https://codingbat.com/prob/p139564
Return a version of the given string, where for every star (*) in the string the star
and the chars immediately to its left and right are gone. So "ab*cd" yields "ad" and
"ab**cd" also yields "ad".
-}
import Control.Exception (assert)


starOut :: String -> String
starOut str = undefined

main :: IO ()
main = do
    assert (starOut "ab*cd" == "ad") (putStrLn "Test passed")
    assert (starOut "ab**cd" == "ad") (putStrLn "Test passed")
    assert (starOut "sm*eilly" == "silly") (putStrLn "Test passed")
    assert (starOut "ab*cd" == "ad") (putStrLn "Test passed")
    assert (starOut "ab**cd" == "ad") (putStrLn "Test passed")
    assert (starOut "sm*eilly" == "silly") (putStrLn "Test passed")

