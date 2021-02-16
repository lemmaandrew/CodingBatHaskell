{- From https://codingbat.com/prob/p181646
We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each 
is smiling. We are in trouble if they are both smiling or if neither of them is smiling. 
Return true if we are in trouble.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


monkeyTrouble :: Bool -> Bool -> Bool
monkeyTrouble aSmile bSmile = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        monkeyTrouble True True `shouldBe` True
    it "True" $
        monkeyTrouble False False `shouldBe` True
    it "False" $
        monkeyTrouble True False `shouldBe` False
    it "False" $
        monkeyTrouble False True `shouldBe` False
