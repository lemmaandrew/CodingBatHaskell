{- From https://codingbat.com/prob/p124510
Given a list of non-negative integers, return a list of those numbers except omitting 
any that end with 9. (Note:  % by 10)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


no9 :: [Integer] -> [Integer]
no9 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,2]" $
        no9 [1,2,19] `shouldBe` [1,2]
    it "[3]" $
        no9 [9,19,29,3] `shouldBe` [3]
    it "[1,2,3]" $
        no9 [1,2,3] `shouldBe` [1,2,3]
    it "[45,90,28,13,0]" $
        no9 [45,99,90,28,13,999,0] `shouldBe` [45,90,28,13,0]
    it "[]" $
        no9 [] `shouldBe` []
    it "[]" $
        no9 [9] `shouldBe` []
    it "[0,0]" $
        no9 [0,9,0] `shouldBe` [0,0]
