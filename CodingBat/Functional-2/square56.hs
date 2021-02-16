{- From https://codingbat.com/prob/p132748
Given a list of integers, return a list of those numbers squared and the product 
added to 10, omitting any of the resulting numbers that end in 5 or 6.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


square56 :: [Integer] -> [Integer]
square56 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[19,11]" $
        square56 [3,1,4] `shouldBe` [19,11]
    it "[11]" $
        square56 [1] `shouldBe` [11]
    it "[14]" $
        square56 [2] `shouldBe` [14]
    it "[19]" $
        square56 [3] `shouldBe` [19]
    it "[]" $
        square56 [4] `shouldBe` []
    it "[]" $
        square56 [5] `shouldBe` []
    it "[]" $
        square56 [6] `shouldBe` []
    it "[59]" $
        square56 [7] `shouldBe` [59]
    it "[11,14,19,59]" $
        square56 [1,2,3,4,5,6,7] `shouldBe` [11,14,19,59]
    it "[19,11,11,91]" $
        square56 [3,(-1),(-4),1,5,9] `shouldBe` [19,11,11,91]
