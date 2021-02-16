{- From https://codingbat.com/prob/p148198
Given a list of non-negative integers, return a list of those numbers multiplied 
by 2, omitting any of the resulting numbers that end in 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


two2 :: [Integer] -> [Integer]
two2 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[4,6]" $
        two2 [1,2,3] `shouldBe` [4,6]
    it "[4]" $
        two2 [2,6,11] `shouldBe` [4]
    it "[0]" $
        two2 [0] `shouldBe` [0]
    it "[]" $
        two2 [] `shouldBe` []
    it "[]" $
        two2 [1,11,111,16] `shouldBe` []
    it "[4,6,10,14]" $
        two2 [2,3,5,7,11] `shouldBe` [4,6,10,14]
    it "[6,8,198,0]" $
        two2 [3,1,4,1,6,99,0] `shouldBe` [6,8,198,0]
