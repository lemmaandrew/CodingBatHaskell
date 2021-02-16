{- From https://codingbat.com/prob/p175689
Given an int array length 2, return true if it does not contain a 2 or 3.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


no23 :: [Int] -> Bool
no23 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        no23 [4,5] `shouldBe` True
    it "False" $
        no23 [4,2] `shouldBe` False
    it "False" $
        no23 [3,5] `shouldBe` False
    it "True" $
        no23 [1,9] `shouldBe` True
    it "False" $
        no23 [2,9] `shouldBe` False
    it "False" $
        no23 [1,3] `shouldBe` False
    it "True" $
        no23 [1,1] `shouldBe` True
    it "False" $
        no23 [2,2] `shouldBe` False
    it "False" $
        no23 [3,3] `shouldBe` False
    it "True" $
        no23 [7,8] `shouldBe` True
    it "True" $
        no23 [8,7] `shouldBe` True
