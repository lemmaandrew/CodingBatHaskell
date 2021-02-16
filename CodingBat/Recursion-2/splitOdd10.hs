{- From https://codingbat.com/prob/p171660
Given an array of ints, is it possible to divide the ints into two groups, so that 
the sum of one group is a multiple of 10, and the sum of the other group is odd. Every 
int must be in one group or the other. Write a recursive helper method that takes whatever 
arguments you like, and make the initial call to your recursive helper from splitOdd10(). 
(No loops needed.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


splitOdd10 :: [Int] -> Bool
splitOdd10 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        splitOdd10 [5,5,5] `shouldBe` True
    it "False" $
        splitOdd10 [5,5,6] `shouldBe` False
    it "True" $
        splitOdd10 [5,5,6,1] `shouldBe` True
    it "True" $
        splitOdd10 [6,5,5,1] `shouldBe` True
    it "True" $
        splitOdd10 [6,5,5,1,10] `shouldBe` True
    it "False" $
        splitOdd10 [6,5,5,5,1] `shouldBe` False
    it "True" $
        splitOdd10 [1] `shouldBe` True
    it "False" $
        splitOdd10 [] `shouldBe` False
    it "True" $
        splitOdd10 [10,7,5,5] `shouldBe` True
    it "False" $
        splitOdd10 [10,0,5,5] `shouldBe` False
    it "True" $
        splitOdd10 [10,7,5,5,2] `shouldBe` True
    it "False" $
        splitOdd10 [10,7,5,5,1] `shouldBe` False
