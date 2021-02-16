{- From https://codingbat.com/prob/p155713
Given an array of ints of odd length, return a new array length 3 containing the 
elements from the middle of the array. The array length will be at least 3.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


midThree :: [Int] -> [Int]
midThree nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[2,3,4]" $
        midThree [1,2,3,4,5] `shouldBe` [2,3,4]
    it "[7,5,3]" $
        midThree [8,6,7,5,3,0,9] `shouldBe` [7,5,3]
    it "[1,2,3]" $
        midThree [1,2,3] `shouldBe` [1,2,3]
