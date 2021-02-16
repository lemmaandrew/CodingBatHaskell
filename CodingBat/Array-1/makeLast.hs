{- From https://codingbat.com/prob/p137188
Given an int array, return a new array with double the length where its last element 
is the same as the original array, and all the other elements are 0. The original array 
will be length 1 or more. Note: by default, a new int array contains all 0's.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeLast :: [Int] -> [Int]
makeLast nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[0,0,0,0,0,6]" $
        makeLast [4,5,6] `shouldBe` [0,0,0,0,0,6]
    it "[0,0,0,2]" $
        makeLast [1,2] `shouldBe` [0,0,0,2]
    it "[0,3]" $
        makeLast [3] `shouldBe` [0,3]
    it "[0,0]" $
        makeLast [0] `shouldBe` [0,0]
    it "[0,0,0,0,0,7]" $
        makeLast [7,7,7] `shouldBe` [0,0,0,0,0,7]
    it "[0,0,0,0,0,4]" $
        makeLast [3,1,4] `shouldBe` [0,0,0,0,0,4]
    it "[0,0,0,0,0,0,0,4]" $
        makeLast [1,2,3,4] `shouldBe` [0,0,0,0,0,0,0,4]
    it "[0,0,0,0,0,0,0,0]" $
        makeLast [1,2,3,0] `shouldBe` [0,0,0,0,0,0,0,0]
    it "[0,0,0,4]" $
        makeLast [2,4] `shouldBe` [0,0,0,4]
