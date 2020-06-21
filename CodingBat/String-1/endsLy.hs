{-From https://codingbat.com/prob/p103895
Given a string, return true if it ends in "ly".
-}
import Control.Exception (assert)


endsLy :: String -> Boolean
endsLy str = undefined

main = do
    assert (endsLy "oddly" == true) (putStrLn "Test passed")
    assert (endsLy "y" == false) (putStrLn "Test passed")
    assert (endsLy "oddy" == false) (putStrLn "Test passed")
    assert (endsLy "oddly" == true) (putStrLn "Test passed")
    assert (endsLy "y" == false) (putStrLn "Test passed")
    assert (endsLy "oddy" == false) (putStrLn "Test passed")

