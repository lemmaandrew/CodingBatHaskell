{-From https://codingbat.com/prob/p126212
Suppose the string "yak" is unlucky. Given a string, return a version where all the "yak"
are removed, but the "a" can be any char. The "yak" strings will not overlap.
-}
import Control.Exception (assert)


stringYak :: String -> String
stringYak str = undefined

main = do
    assert (stringYak "yakpak" == "pak") (putStrLn "Test passed")
    assert (stringYak "pakyak" == "pak") (putStrLn "Test passed")
    assert (stringYak "yak123ya" == "123ya") (putStrLn "Test passed")
    assert (stringYak "yakpak" == "pak") (putStrLn "Test passed")
    assert (stringYak "pakyak" == "pak") (putStrLn "Test passed")
    assert (stringYak "yak123ya" == "123ya") (putStrLn "Test passed")

