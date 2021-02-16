{- From https://codingbat.com/prob/p112409
Given an array of ints length 3, return a new array with the elements in reverse 
order, so {1, 2, 3} becomes {3, 2, 1}.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


reverse3 :: [Int] -> [Int]
reverse3 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[3,2,1]" $
        reverse3 [1,2,3] `shouldBe` [3,2,1]
    it "[9,11,5]" $
        reverse3 [5,11,9] `shouldBe` [9,11,5]
    it "[0,0,7]" $
        reverse3 [7,0,0] `shouldBe` [0,0,7]
    it "[2,1,2]" $
        reverse3 [2,1,2] `shouldBe` [2,1,2]
    it "[1,2,1]" $
        reverse3 [1,2,1] `shouldBe` [1,2,1]
    it "[3,11,2]" $
        reverse3 [2,11,3] `shouldBe` [3,11,2]
    it "[5,6,0]" $
        reverse3 [0,6,5] `shouldBe` [5,6,0]
    it "[3,2,7]" $
        reverse3 [7,2,3] `shouldBe` [3,2,7]
