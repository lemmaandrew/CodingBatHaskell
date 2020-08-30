{-From https://codingbat.com/prob/p181646
We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is
smiling. We are in trouble if they are both smiling or if neither of them is smiling.
Return true if we are in trouble.
-}
import Test.Hspec


monkeyTrouble :: Boolean -> Boolean -> Boolean
monkeyTrouble aSmile bSmile = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ monkeyTrouble true true `shouldBe` true
   it "true" $ monkeyTrouble false false `shouldBe` true
   it "false" $ monkeyTrouble true false `shouldBe` false

