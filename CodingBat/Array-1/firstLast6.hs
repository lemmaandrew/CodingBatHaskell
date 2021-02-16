{- From https://codingbat.com/prob/p185685
Given an array of ints, return true if 6 appears as either the first or last element 
in the array. The array will be length 1 or more.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


firstLast6 :: [Int] -> Bool
firstLast6 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        firstLast6 [1,2,6] `shouldBe` True
    it "True" $
        firstLast6 [6,1,2,3] `shouldBe` True
    it "False" $
        firstLast6 [13,6,1,2,3] `shouldBe` False
    it "True" $
        firstLast6 [13,6,1,2,6] `shouldBe` True
    it "False" $
        firstLast6 [3,2,1] `shouldBe` False
    it "False" $
        firstLast6 [3,6,1] `shouldBe` False
    it "True" $
        firstLast6 [3,6] `shouldBe` True
    it "True" $
        firstLast6 [6] `shouldBe` True
    it "False" $
        firstLast6 [3] `shouldBe` False
    it "True" $
        firstLast6 [5,6] `shouldBe` True
    it "False" $
        firstLast6 [5,5] `shouldBe` False
    it "True" $
        firstLast6 [1,2,3,4,6] `shouldBe` True
    it "False" $
        firstLast6 [1,2,3,4] `shouldBe` False
