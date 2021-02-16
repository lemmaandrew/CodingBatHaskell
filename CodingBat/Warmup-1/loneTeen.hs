{- From https://codingbat.com/prob/p165701
We'll say that a number is \"teen\" if it is in the range 13..19 inclusive. Given 
2 int values, return true if one or the other is teen, but not both.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


loneTeen :: Int -> Int -> Bool
loneTeen a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        loneTeen 13 99 `shouldBe` True
    it "True" $
        loneTeen 21 19 `shouldBe` True
    it "False" $
        loneTeen 13 13 `shouldBe` False
    it "True" $
        loneTeen 14 20 `shouldBe` True
    it "True" $
        loneTeen 20 15 `shouldBe` True
    it "False" $
        loneTeen 16 17 `shouldBe` False
    it "True" $
        loneTeen 16 9 `shouldBe` True
    it "False" $
        loneTeen 16 18 `shouldBe` False
    it "False" $
        loneTeen 13 19 `shouldBe` False
    it "True" $
        loneTeen 13 20 `shouldBe` True
    it "True" $
        loneTeen 6 18 `shouldBe` True
    it "True" $
        loneTeen 99 13 `shouldBe` True
    it "False" $
        loneTeen 99 99 `shouldBe` False
