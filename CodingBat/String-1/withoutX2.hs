{-From https://codingbat.com/prob/p151359
Given a string, if one or both of the first 2 chars is 'x', return the string without
those 'x' chars, and otherwise return the string unchanged. This is a little harder than
it looks.
-}
import Control.Exception (assert)


withoutX2 :: String -> String
withoutX2 str = undefined

main :: IO ()
main = do
    assert (withoutX2 "xHi" == "Hi") (putStrLn "Test passed")
    assert (withoutX2 "Hxi" == "Hi") (putStrLn "Test passed")
    assert (withoutX2 "Hi" == "Hi") (putStrLn "Test passed")
    assert (withoutX2 "xHi" == "Hi") (putStrLn "Test passed")
    assert (withoutX2 "Hxi" == "Hi") (putStrLn "Test passed")
    assert (withoutX2 "Hi" == "Hi") (putStrLn "Test passed")

