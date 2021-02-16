{- From https://codingbat.com/prob/p167430
Given an array of ints, return true if it contains a 2, 7, 1 pattern: a value, followed 
by the value plus 5, followed by the value minus 1. Additionally the 271 counts even 
if the \"1\" differs by 2 or less from the correct value.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


has271 :: [Int] -> Bool
has271 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        has271 [1,2,7,1] `shouldBe` True
    it "False" $
        has271 [1,2,8,1] `shouldBe` False
    it "True" $
        has271 [2,7,1] `shouldBe` True
    it "True" $
        has271 [3,8,2] `shouldBe` True
    it "True" $
        has271 [2,7,3] `shouldBe` True
    it "False" $
        has271 [2,7,4] `shouldBe` False
    it "True" $
        has271 [2,7,(-1)] `shouldBe` True
    it "False" $
        has271 [2,7,(-2)] `shouldBe` False
    it "True" $
        has271 [4,5,3,8,0] `shouldBe` True
    it "True" $
        has271 [2,7,5,10,4] `shouldBe` True
    it "True" $
        has271 [2,7,(-2),4,9,3] `shouldBe` True
    it "False" $
        has271 [2,7,5,10,1] `shouldBe` False
    it "False" $
        has271 [2,7,(-2),4,10,2] `shouldBe` False
    it "False" $
        has271 [1,1,4,9,0] `shouldBe` False
    it "True" $
        has271 [1,1,4,9,4,9,2] `shouldBe` True
