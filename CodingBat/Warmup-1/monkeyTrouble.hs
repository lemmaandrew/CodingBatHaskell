{-From https://codingbat.com/prob/p181646
We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is
smiling. We are in trouble if they are both smiling or if neither of them is smiling.
Return true if we are in trouble.
-}
import Control.Exception (assert)


monkeyTrouble :: Bool -> Bool -> Bool
monkeyTrouble aSmile bSmile = undefined

main :: IO ()
main = do
    assert (monkeyTrouble True True == True) (putStrLn "Test passed")
    assert (monkeyTrouble False False == True) (putStrLn "Test passed")
    assert (monkeyTrouble True False == False) (putStrLn "Test passed")
    assert (monkeyTrouble True True == True) (putStrLn "Test passed")
    assert (monkeyTrouble False False == True) (putStrLn "Test passed")
    assert (monkeyTrouble True False == False) (putStrLn "Test passed")

