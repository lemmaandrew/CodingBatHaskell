{- From https://codingbat.com/prob/p186672
Given an array of ints, return true if every element is a 1 or a 4.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


only14 :: [Int] -> Bool
only14 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        only14 [1,4,1,4] `shouldBe` True
    it "False" $
        only14 [1,4,2,4] `shouldBe` False
    it "True" $
        only14 [1,1] `shouldBe` True
    it "True" $
        only14 [4,1] `shouldBe` True
    it "False" $
        only14 [2] `shouldBe` False
    it "True" $
        only14 [] `shouldBe` True
    it "False" $
        only14 [1,4,1,3] `shouldBe` False
    it "False" $
        only14 [3,1,3] `shouldBe` False
    it "True" $
        only14 [1] `shouldBe` True
    it "True" $
        only14 [4] `shouldBe` True
    it "False" $
        only14 [3,4] `shouldBe` False
    it "False" $
        only14 [1,3,4] `shouldBe` False
    it "True" $
        only14 [1,1,1] `shouldBe` True
    it "False" $
        only14 [1,1,1,5] `shouldBe` False
    it "True" $
        only14 [4,1,4,1] `shouldBe` True
