{- From https://codingbat.com/prob/p178986
We'll say that a number is \"teen\" if it is in the range 13..19 inclusive. Given 
3 int values, return true if 1 or more of them are teen.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


hasTeen :: Int -> Int -> Int -> Bool
hasTeen a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        hasTeen 13 20 10 `shouldBe` True
    it "True" $
        hasTeen 20 19 10 `shouldBe` True
    it "True" $
        hasTeen 20 10 13 `shouldBe` True
    it "False" $
        hasTeen 1 20 12 `shouldBe` False
    it "True" $
        hasTeen 19 20 12 `shouldBe` True
    it "True" $
        hasTeen 12 20 19 `shouldBe` True
    it "False" $
        hasTeen 12 9 20 `shouldBe` False
    it "True" $
        hasTeen 12 18 20 `shouldBe` True
    it "True" $
        hasTeen 14 2 20 `shouldBe` True
    it "False" $
        hasTeen 4 2 20 `shouldBe` False
    it "False" $
        hasTeen 11 22 22 `shouldBe` False
