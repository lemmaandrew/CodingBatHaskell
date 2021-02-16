{- From https://codingbat.com/prob/p142455
Given an int array of any length, return a new array of its first 2 elements. If 
the array is smaller than length 2, use whatever elements are present.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


frontPiece :: [Int] -> [Int]
frontPiece nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,2]" $
        frontPiece [1,2,3] `shouldBe` [1,2]
    it "[1,2]" $
        frontPiece [1,2] `shouldBe` [1,2]
    it "[1]" $
        frontPiece [1] `shouldBe` [1]
    it "[]" $
        frontPiece [] `shouldBe` []
    it "[6,5]" $
        frontPiece [6,5,0] `shouldBe` [6,5]
    it "[6,5]" $
        frontPiece [6,5] `shouldBe` [6,5]
    it "[3,1]" $
        frontPiece [3,1,4,1,5] `shouldBe` [3,1]
    it "[6]" $
        frontPiece [6] `shouldBe` [6]
