{- From https://codingbat.com/prob/p118044
Given an array of ints, swap the first and last elements in the array. Return the 
modified array. The array length will be at least 1.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


swapEnds :: [Int] -> [Int]
swapEnds nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[4,2,3,1]" $
        swapEnds [1,2,3,4] `shouldBe` [4,2,3,1]
    it "[3,2,1]" $
        swapEnds [1,2,3] `shouldBe` [3,2,1]
    it "[5,6,7,9,8]" $
        swapEnds [8,6,7,9,5] `shouldBe` [5,6,7,9,8]
    it "[9,1,4,1,5,3]" $
        swapEnds [3,1,4,1,5,9] `shouldBe` [9,1,4,1,5,3]
    it "[2,1]" $
        swapEnds [1,2] `shouldBe` [2,1]
    it "[1]" $
        swapEnds [1] `shouldBe` [1]
