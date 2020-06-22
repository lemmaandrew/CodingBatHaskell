{-From https://codingbat.com/prob/p170829
Given a string and a non-empty word string, return a version of the original String where
all chars have been replaced by pluses ("+"), except for appearances of the word string
which are preserved unchanged.
-}
import Control.Exception (assert)


plusOut :: String -> String -> String
plusOut str word = undefined

main :: IO ()
main = do
    assert (plusOut "12xy34" "xy" == "++xy++") (putStrLn "Test passed")
    assert (plusOut "12xy34" "1" == "1+++++") (putStrLn "Test passed")
    assert (plusOut "12xy34xyabcxy" "xy" == "++xy++xy+++xy") (putStrLn "Test passed")
    assert (plusOut "12xy34" "xy" == "++xy++") (putStrLn "Test passed")
    assert (plusOut "12xy34" "1" == "1+++++") (putStrLn "Test passed")
    assert (plusOut "12xy34xyabcxy" "xy" == "++xy++xy+++xy") (putStrLn "Test passed")

