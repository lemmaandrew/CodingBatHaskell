{- From https://codingbat.com/prob/p185176
Given an array of ints of odd length, look at the first, last, and middle values 
in the array and return the largest. The array length will be a least 1.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


maxTriple :: [Int] -> Int
maxTriple nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        maxTriple [1,2,3] `shouldBe` 3
    it "5" $
        maxTriple [1,5,3] `shouldBe` 5
    it "5" $
        maxTriple [5,2,3] `shouldBe` 5
    it "3" $
        maxTriple [1,2,3,1,1] `shouldBe` 3
    it "5" $
        maxTriple [1,7,3,1,5] `shouldBe` 5
    it "5" $
        maxTriple [5,1,3,7,1] `shouldBe` 5
    it "5" $
        maxTriple [5,1,7,3,7,8,1] `shouldBe` 5
    it "9" $
        maxTriple [5,1,7,9,7,8,1] `shouldBe` 9
    it "9" $
        maxTriple [5,1,7,3,7,8,9] `shouldBe` 9
    it "5" $
        maxTriple [2,2,5,1,1] `shouldBe` 5
