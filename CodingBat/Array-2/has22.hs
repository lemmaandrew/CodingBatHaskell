{- From https://codingbat.com/prob/p121853
Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


has22 :: [Int] -> Bool
has22 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        has22 [1,2,2] `shouldBe` True
    it "False" $
        has22 [1,2,1,2] `shouldBe` False
    it "False" $
        has22 [2,1,2] `shouldBe` False
    it "True" $
        has22 [2,2,1,2] `shouldBe` True
    it "False" $
        has22 [1,3,2] `shouldBe` False
    it "True" $
        has22 [1,3,2,2] `shouldBe` True
    it "True" $
        has22 [2,3,2,2] `shouldBe` True
    it "True" $
        has22 [4,2,4,2,2,5] `shouldBe` True
    it "False" $
        has22 [1,2] `shouldBe` False
    it "True" $
        has22 [2,2] `shouldBe` True
    it "False" $
        has22 [2] `shouldBe` False
    it "False" $
        has22 [] `shouldBe` False
    it "True" $
        has22 [3,3,2,2] `shouldBe` True
    it "False" $
        has22 [5,2,5,2] `shouldBe` False
