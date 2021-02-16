{- From https://codingbat.com/prob/p134022
Given two arrays of ints sorted in increasing order, outer and inner, return true 
if all of the numbers in inner appear in outer. The best solution makes only a single 
\"linear\" pass of both arrays, taking advantage of the fact that both arrays are already in 
sorted order.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


linearIn :: [Int] -> [Int] -> Bool
linearIn outer inner = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        linearIn [1,2,4,6] [2,4] `shouldBe` True
    it "False" $
        linearIn [1,2,4,6] [2,3,4] `shouldBe` False
    it "True" $
        linearIn [1,2,4,4,6] [2,4] `shouldBe` True
    it "True" $
        linearIn [2,2,4,4,6,6] [2,4] `shouldBe` True
    it "True" $
        linearIn [2,2,2,2,2] [2,2] `shouldBe` True
    it "False" $
        linearIn [2,2,2,2,2] [2,4] `shouldBe` False
    it "True" $
        linearIn [2,2,2,2,4] [2,4] `shouldBe` True
    it "True" $
        linearIn [1,2,3] [2] `shouldBe` True
    it "False" $
        linearIn [1,2,3] [(-1)] `shouldBe` False
    it "True" $
        linearIn [1,2,3] [] `shouldBe` True
    it "True" $
        linearIn [(-1),0,3,3,3,10,12] [(-1),0,3,12] `shouldBe` True
    it "False" $
        linearIn [(-1),0,3,3,3,10,12] [0,3,12,14] `shouldBe` False
    it "False" $
        linearIn [(-1),0,3,3,3,10,12] [(-1),10,11] `shouldBe` False
