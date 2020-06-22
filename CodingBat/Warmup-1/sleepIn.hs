{-From https://codingbat.com/prob/p187868
The parameter weekday is true if it is a weekday, and the parameter vacation is true
if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return
true if we sleep in.
-}
import Control.Exception (assert)


sleepIn :: Bool -> Bool -> Bool
sleepIn weekday vacation = undefined

main :: IO ()
main = do
    assert (sleepIn False False == True) (putStrLn "Test passed")
    assert (sleepIn True False == False) (putStrLn "Test passed")
    assert (sleepIn False True == True) (putStrLn "Test passed")
    assert (sleepIn False False == True) (putStrLn "Test passed")
    assert (sleepIn True False == False) (putStrLn "Test passed")
    assert (sleepIn False True == True) (putStrLn "Test passed")

