{- From https://codingbat.com/prob/p118976
Given an array of ints, return true if the array is length 1 or more, and the first 
element and the last element are equal.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sameFirstLast :: [Int] -> Bool
sameFirstLast nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "False" $
        sameFirstLast [1,2,3] `shouldBe` False
    it "True" $
        sameFirstLast [1,2,3,1] `shouldBe` True
    it "True" $
        sameFirstLast [1,2,1] `shouldBe` True
    it "True" $
        sameFirstLast [7] `shouldBe` True
    it "False" $
        sameFirstLast [] `shouldBe` False
    it "True" $
        sameFirstLast [1,2,3,4,5,1] `shouldBe` True
    it "False" $
        sameFirstLast [1,2,3,4,5,13] `shouldBe` False
    it "True" $
        sameFirstLast [13,2,3,4,5,13] `shouldBe` True
    it "True" $
        sameFirstLast [7,7] `shouldBe` True
