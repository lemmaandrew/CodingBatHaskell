{- From https://codingbat.com/prob/p146256
Given an array of ints length 3, figure out which is larger, the first or last element 
in the array, and set all the other elements to be that value. Return the changed array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


maxEnd3 :: [Int] -> [Int]
maxEnd3 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[3,3,3]" $
        maxEnd3 [1,2,3] `shouldBe` [3,3,3]
    it "[11,11,11]" $
        maxEnd3 [11,5,9] `shouldBe` [11,11,11]
    it "[3,3,3]" $
        maxEnd3 [2,11,3] `shouldBe` [3,3,3]
    it "[11,11,11]" $
        maxEnd3 [11,3,3] `shouldBe` [11,11,11]
    it "[11,11,11]" $
        maxEnd3 [3,11,11] `shouldBe` [11,11,11]
    it "[2,2,2]" $
        maxEnd3 [2,2,2] `shouldBe` [2,2,2]
    it "[2,2,2]" $
        maxEnd3 [2,11,2] `shouldBe` [2,2,2]
    it "[1,1,1]" $
        maxEnd3 [0,0,1] `shouldBe` [1,1,1]
