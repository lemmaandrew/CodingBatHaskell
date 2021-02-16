{- From https://codingbat.com/prob/p196409
We'll say that a \"mirror\" section in an array is a group of contiguous elements 
such that somewhere in the array, the same group appears in reverse order. For example, 
the largest mirror section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part). 
Return the size of the largest mirror section found in the given array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


maxMirror :: [Int] -> Int
maxMirror nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        maxMirror [1,2,3,8,9,3,2,1] `shouldBe` 3
    it "3" $
        maxMirror [1,2,1,4] `shouldBe` 3
    it "2" $
        maxMirror [7,1,2,9,7,2,1] `shouldBe` 2
    it "4" $
        maxMirror [21,22,9,8,7,6,23,24,6,7,8,9,25,7,8,9] `shouldBe` 4
    it "4" $
        maxMirror [1,2,1,20,21,1,2,1,2,23,24,2,1,2,1,25] `shouldBe` 4
    it "5" $
        maxMirror [1,2,3,2,1] `shouldBe` 5
    it "2" $
        maxMirror [1,2,3,3,8] `shouldBe` 2
    it "2" $
        maxMirror [1,2,7,8,1,7,2] `shouldBe` 2
    it "3" $
        maxMirror [1,1,1] `shouldBe` 3
    it "1" $
        maxMirror [1] `shouldBe` 1
    it "0" $
        maxMirror [] `shouldBe` 0
    it "3" $
        maxMirror [9,1,1,4,2,1,1,1] `shouldBe` 3
    it "7" $
        maxMirror [5,9,9,4,5,4,9,9,2] `shouldBe` 7
    it "2" $
        maxMirror [5,9,9,6,5,4,9,9,2] `shouldBe` 2
    it "3" $
        maxMirror [5,9,1,6,5,4,1,9,5] `shouldBe` 3
