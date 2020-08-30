{-From https://codingbat.com/prob/p110973
Your cell phone rings. Return true if you should answer it. Normally you answer, except
in the morning you only answer if it is your mom calling. In all cases, if you are
asleep, you do not answer.
-}
import Test.Hspec


answerCell :: Boolean -> Boolean -> Boolean -> Boolean
answerCell isMorning isMom isAsleep = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ answerCell false false false `shouldBe` true
   it "false" $ answerCell false false true `shouldBe` false
   it "false" $ answerCell true false false `shouldBe` false

