{-From https://codingbat.com/prob/p183592
Given a string, take the first 2 chars and return the string with the 2 chars added
at both the front and back, so "kitten" yields"kikittenki". If the string length is less
than 2, use whatever chars are there.
-}
import Control.Exception (assert)


front22 :: String -> String
front22 str = undefined

main :: IO ()
main = do
    assert (front22 "kitten" == "kikittenki") (putStrLn "Test passed")
    assert (front22 "Ha" == "HaHaHa") (putStrLn "Test passed")
    assert (front22 "abc" == "ababcab") (putStrLn "Test passed")
    assert (front22 "kitten" == "kikittenki") (putStrLn "Test passed")
    assert (front22 "Ha" == "HaHaHa") (putStrLn "Test passed")
    assert (front22 "abc" == "ababcab") (putStrLn "Test passed")

