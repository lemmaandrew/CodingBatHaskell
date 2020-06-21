{-From https://codingbat.com/prob/p187868
The parameter weekday is true if it is a weekday, and the parameter vacation is true
if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return
true if we sleep in.
-}
import Control.Exception (assert)


sleepIn :: Boolean -> Boolean -> Boolean
sleepIn weekday vacation = undefined

main = do
    assert (sleepIn false false == true) (putStrLn "Test passed")
    assert (sleepIn true false == false) (putStrLn "Test passed")
    assert (sleepIn false true == true) (putStrLn "Test passed")
    assert (sleepIn false false == true) (putStrLn "Test passed")
    assert (sleepIn true false == false) (putStrLn "Test passed")
    assert (sleepIn false true == true) (putStrLn "Test passed")

