{-From https://codingbat.com/prob/p110973
Your cell phone rings. Return true if you should answer it. Normally you answer, except
in the morning you only answer if it is your mom calling. In all cases, if you are
asleep, you do not answer.
-}
import Test.Hspec


answerCell :: Bool -> Bool -> Bool -> Bool
answerCell isMorning isMom isAsleep = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ answerCell False False False `shouldBe` True
   it "False" $ answerCell False False True `shouldBe` False
   it "False" $ answerCell True False False `shouldBe` False
   it "True" $ answerCell False False False `shouldBe` True
   it "False" $ answerCell False False True `shouldBe` False
   it "False" $ answerCell True False False `shouldBe` False

