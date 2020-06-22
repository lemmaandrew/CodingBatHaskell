{-From https://codingbat.com/prob/p191914
Given a string, return a new string where "not " has been added to the front. However,
if the string already begins with "not", return the string unchanged. Note: use .equals()
to compare 2 strings.
-}
import Control.Exception (assert)


notString :: String -> String
notString str = undefined

main :: IO ()
main = do
    assert (notString "candy" == "notcandy") (putStrLn "Test passed")
    assert (notString "x" == "notx") (putStrLn "Test passed")
    assert (notString "notbad" == "notbad") (putStrLn "Test passed")
    assert (notString "candy" == "notcandy") (putStrLn "Test passed")
    assert (notString "x" == "notx") (putStrLn "Test passed")
    assert (notString "notbad" == "notbad") (putStrLn "Test passed")

