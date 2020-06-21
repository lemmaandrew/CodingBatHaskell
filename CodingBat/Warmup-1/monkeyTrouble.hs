{-From https://codingbat.com/prob/p181646
We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is
smiling. We are in trouble if they are both smiling or if neither of them is smiling.
Return true if we are in trouble.
-}
import Control.Exception (assert)


monkeyTrouble :: Boolean -> Boolean -> Boolean
monkeyTrouble aSmile bSmile = undefined

main = do
    assert (monkeyTrouble true true == true) (putStrLn "Test passed")
    assert (monkeyTrouble false false == true) (putStrLn "Test passed")
    assert (monkeyTrouble true false == false) (putStrLn "Test passed")
    assert (monkeyTrouble true true == true) (putStrLn "Test passed")
    assert (monkeyTrouble false false == true) (putStrLn "Test passed")
    assert (monkeyTrouble true false == false) (putStrLn "Test passed")

