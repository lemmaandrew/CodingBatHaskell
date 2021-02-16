{- From https://codingbat.com/prob/p136254
Given arrays nums1 and nums2 of the same length, for every element in nums1, consider 
the corresponding element in nums2 (at the same index). Return the count of the number 
of times that the two elements differ by 2 or less, but are not equal.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


matchUp :: [Int] -> [Int] -> Int
matchUp nums1 nums2 = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        matchUp [1,2,3] [2,3,10] `shouldBe` 2
    it "3" $
        matchUp [1,2,3] [2,3,5] `shouldBe` 3
    it "2" $
        matchUp [1,2,3] [2,3,3] `shouldBe` 2
    it "1" $
        matchUp [5,3] [5,5] `shouldBe` 1
    it "2" $
        matchUp [5,3] [4,4] `shouldBe` 2
    it "1" $
        matchUp [5,3] [3,3] `shouldBe` 1
    it "1" $
        matchUp [5,3] [2,2] `shouldBe` 1
    it "1" $
        matchUp [5,3] [1,1] `shouldBe` 1
    it "0" $
        matchUp [5,3] [0,0] `shouldBe` 0
    it "0" $
        matchUp [4] [4] `shouldBe` 0
    it "1" $
        matchUp [4] [5] `shouldBe` 1
