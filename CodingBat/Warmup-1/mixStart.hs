{-From https://codingbat.com/prob/p151713
Return true if the given string begins with "mix", except the 'm' can be anything, so
"pix", "9ix" .. all count.
-}
import Control.Exception (assert)


mixStart :: String -> Bool
mixStart str = undefined

main :: IO ()
main = do
    assert (mixStart "mixsnacks" == True) (putStrLn "Test passed")
    assert (mixStart "pixsnacks" == True) (putStrLn "Test passed")
    assert (mixStart "pizsnacks" == False) (putStrLn "Test passed")
    assert (mixStart "mixsnacks" == True) (putStrLn "Test passed")
    assert (mixStart "pixsnacks" == True) (putStrLn "Test passed")
    assert (mixStart "pizsnacks" == False) (putStrLn "Test passed")

