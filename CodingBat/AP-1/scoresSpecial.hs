{- From https://codingbat.com/prob/p140485
Given two arrays, A and B, of non-negative int scores. A \"special\" score is one 
which is a multiple of 10, such as 40 or 90. Return the sum of largest special score in 
A and the largest special score in B. To practice decomposition, write a separate 
helper method which finds the largest special score in an array. Write your helper method 
after your scoresSpecial() method in the JavaBat text area.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


scoresSpecial :: [Int] -> [Int] -> Int
scoresSpecial a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "40" $
        scoresSpecial [12,10,4] [2,20,30] `shouldBe` 40
    it "40" $
        scoresSpecial [20,10,4] [2,20,10] `shouldBe` 40
    it "20" $
        scoresSpecial [12,11,4] [2,20,31] `shouldBe` 20
    it "50" $
        scoresSpecial [1,20,2,50] [3,4,5] `shouldBe` 50
    it "50" $
        scoresSpecial [3,4,5] [1,50,2,20] `shouldBe` 50
    it "50" $
        scoresSpecial [10,4,20,30] [20] `shouldBe` 50
    it "50" $
        scoresSpecial [10,4,20,30] [20] `shouldBe` 50
    it "50" $
        scoresSpecial [10,4,20,30] [3,20,99] `shouldBe` 50
    it "60" $
        scoresSpecial [10,4,20,30] [30,20,99] `shouldBe` 60
    it "0" $
        scoresSpecial [] [2] `shouldBe` 0
    it "20" $
        scoresSpecial [] [20] `shouldBe` 20
    it "40" $
        scoresSpecial [14,10,4] [4,20,30] `shouldBe` 40
