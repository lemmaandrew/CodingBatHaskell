{- From https://codingbat.com/prob/p103456
Given a list of integers, return a list of the integers, omitting any that are less 
than 0.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noNeg :: [Integer] -> [Integer]
noNeg nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1]" $
        noNeg [1,(-2)] `shouldBe` [1]
    it "[3,3]" $
        noNeg [(-3),(-3),3,3] `shouldBe` [3,3]
    it "[]" $
        noNeg [(-1),(-1),(-1)] `shouldBe` []
    it "[]" $
        noNeg [] `shouldBe` []
    it "[0,1,2]" $
        noNeg [0,1,2] `shouldBe` [0,1,2]
    it "[3,1,4]" $
        noNeg [3,(-10),1,(-1),4,(-400)] `shouldBe` [3,1,4]
    it "[3,1,5]" $
        noNeg [(-1),3,1,(-1),(-10),(-100),(-111),5] `shouldBe` [3,1,5]
