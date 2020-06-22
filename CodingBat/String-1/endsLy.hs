{-From https://codingbat.com/prob/p103895
Given a string, return true if it ends in "ly".
-}
import Control.Exception (assert)


endsLy :: String -> Bool
endsLy str = undefined

main :: IO ()
main = do
    assert (endsLy "oddly" == True) (putStrLn "Test passed")
    assert (endsLy "y" == False) (putStrLn "Test passed")
    assert (endsLy "oddy" == False) (putStrLn "Test passed")
    assert (endsLy "oddly" == True) (putStrLn "Test passed")
    assert (endsLy "y" == False) (putStrLn "Test passed")
    assert (endsLy "oddy" == False) (putStrLn "Test passed")

