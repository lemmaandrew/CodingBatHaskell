{- From https://codingbat.com/prob/p136648
Given an array of ints, return true if it contains no 1's or it contains no 4's.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


no14 :: [Int] -> Bool
no14 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        no14 [1,2,3] `shouldBe` True
    it "False" $
        no14 [1,2,3,4] `shouldBe` False
    it "True" $
        no14 [2,3,4] `shouldBe` True
    it "False" $
        no14 [1,1,4,4] `shouldBe` False
    it "True" $
        no14 [2,2,4,4] `shouldBe` True
    it "False" $
        no14 [2,3,4,1] `shouldBe` False
    it "True" $
        no14 [2,1,1] `shouldBe` True
    it "False" $
        no14 [1,4] `shouldBe` False
    it "True" $
        no14 [2] `shouldBe` True
    it "True" $
        no14 [2,1] `shouldBe` True
    it "True" $
        no14 [1] `shouldBe` True
    it "True" $
        no14 [4] `shouldBe` True
    it "True" $
        no14 [] `shouldBe` True
    it "True" $
        no14 [1,1,1,1] `shouldBe` True
    it "False" $
        no14 [9,4,4,1] `shouldBe` False
    it "False" $
        no14 [4,2,3,1] `shouldBe` False
    it "True" $
        no14 [4,2,3,5] `shouldBe` True
    it "True" $
        no14 [4,4,2] `shouldBe` True
    it "False" $
        no14 [1,4,4] `shouldBe` False
