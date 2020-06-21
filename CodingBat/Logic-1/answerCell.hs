{-From https://codingbat.com/prob/p110973
Your cell phone rings. Return true if you should answer it. Normally you answer, except
in the morning you only answer if it is your mom calling. In all cases, if you are
asleep, you do not answer.
-}
import Control.Exception (assert)


answerCell :: Boolean -> Boolean -> Boolean -> Boolean
answerCell isMorning isMom isAsleep = undefined

main = do
    assert (answerCell false false false == true) (putStrLn "Test passed")
    assert (answerCell false false true == false) (putStrLn "Test passed")
    assert (answerCell true false false == false) (putStrLn "Test passed")
    assert (answerCell false false false == true) (putStrLn "Test passed")
    assert (answerCell false false true == false) (putStrLn "Test passed")
    assert (answerCell true false false == false) (putStrLn "Test passed")

