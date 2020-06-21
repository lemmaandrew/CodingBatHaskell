{-From https://codingbat.com/prob/p101372
Given a string, compute recursively (no loops) a new string where all the lowercase 'x'
chars have been changed to 'y' chars.
-}
import Control.Exception (assert)


changeXY :: String -> String
changeXY str = undefined

main = do
    assert (changeXY "codex" == "codey") (putStrLn "Test passed")
    assert (changeXY "xxhixx" == "yyhiyy") (putStrLn "Test passed")
    assert (changeXY "xhixhix" == "yhiyhiy") (putStrLn "Test passed")
    assert (changeXY "codex" == "codey") (putStrLn "Test passed")
    assert (changeXY "xxhixx" == "yyhiyy") (putStrLn "Test passed")
    assert (changeXY "xhixhix" == "yhiyhiy") (putStrLn "Test passed")

