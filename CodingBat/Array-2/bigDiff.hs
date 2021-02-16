{- From https://codingbat.com/prob/p196640
Given an array length 1 or more of ints, return the difference between the largest 
and smallest values in the array. Note: the built-in Math.min(v1, v2) and Math.max(v1, 
v2) methods  return the smaller or larger of two values.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


bigDiff :: [Int] -> Int
bigDiff nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "7" $
        bigDiff [10,3,5,6] `shouldBe` 7
    it "8" $
        bigDiff [7,2,10,9] `shouldBe` 8
    it "8" $
        bigDiff [2,10,7,2] `shouldBe` 8
    it "8" $
        bigDiff [2,10] `shouldBe` 8
    it "8" $
        bigDiff [10,2] `shouldBe` 8
    it "10" $
        bigDiff [10,0] `shouldBe` 10
    it "1" $
        bigDiff [2,3] `shouldBe` 1
    it "0" $
        bigDiff [2,2] `shouldBe` 0
    it "0" $
        bigDiff [2] `shouldBe` 0
    it "8" $
        bigDiff [5,1,6,1,9,9] `shouldBe` 8
    it "3" $
        bigDiff [7,6,8,5] `shouldBe` 3
    it "3" $
        bigDiff [7,7,6,8,5,5,6] `shouldBe` 3
