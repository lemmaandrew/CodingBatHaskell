{-From https://codingbat.com/prob/p151713
Return true if the given string begins with "mix", except the 'm' can be anything, so
"pix", "9ix" .. all count.
-}
import Control.Exception (assert)


mixStart :: String -> Boolean
mixStart str = undefined

main = do
    assert (mixStart "mixsnacks" == true) (putStrLn "Test passed")
    assert (mixStart "pixsnacks" == true) (putStrLn "Test passed")
    assert (mixStart "pizsnacks" == false) (putStrLn "Test passed")
    assert (mixStart "mixsnacks" == true) (putStrLn "Test passed")
    assert (mixStart "pixsnacks" == true) (putStrLn "Test passed")
    assert (mixStart "pizsnacks" == false) (putStrLn "Test passed")

