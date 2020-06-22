{-From https://codingbat.com/prob/p199720
Given a string, return a string made of the first 2 chars (if present), however include
first char only if it is 'o' and include the second only if it is 'z', so "ozymandias"
yields "oz".
-}
import Control.Exception (assert)


startOz :: String -> String
startOz str = undefined

main :: IO ()
main = do
    assert (startOz "ozymandias" == "oz") (putStrLn "Test passed")
    assert (startOz "bzoo" == "z") (putStrLn "Test passed")
    assert (startOz "oxx" == "o") (putStrLn "Test passed")
    assert (startOz "ozymandias" == "oz") (putStrLn "Test passed")
    assert (startOz "bzoo" == "z") (putStrLn "Test passed")
    assert (startOz "oxx" == "o") (putStrLn "Test passed")

