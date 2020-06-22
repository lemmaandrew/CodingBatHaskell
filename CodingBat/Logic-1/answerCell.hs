{-From https://codingbat.com/prob/p110973
Your cell phone rings. Return true if you should answer it. Normally you answer, except
in the morning you only answer if it is your mom calling. In all cases, if you are
asleep, you do not answer.
-}
import Control.Exception (assert)


answerCell :: Bool -> Bool -> Bool -> Bool
answerCell isMorning isMom isAsleep = undefined

main :: IO ()
main = do
    assert (answerCell False False False == True) (putStrLn "Test passed")
    assert (answerCell False False True == False) (putStrLn "Test passed")
    assert (answerCell True False False == False) (putStrLn "Test passed")
    assert (answerCell False False False == True) (putStrLn "Test passed")
    assert (answerCell False False True == False) (putStrLn "Test passed")
    assert (answerCell True False False == False) (putStrLn "Test passed")

