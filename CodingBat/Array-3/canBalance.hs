{- From https://codingbat.com/prob/p158767
Given a non-empty array, return true if there is a place to split the array so that 
the sum of the numbers on one side is equal to the sum of the numbers on the other side.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


canBalance :: [Int] -> Bool
canBalance nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        canBalance [1,1,1,2,1] `shouldBe` True
    it "False" $
        canBalance [2,1,1,2,1] `shouldBe` False
    it "True" $
        canBalance [10,10] `shouldBe` True
    it "True" $
        canBalance [10,0,1,(-1),10] `shouldBe` True
    it "True" $
        canBalance [1,1,1,1,4] `shouldBe` True
    it "False" $
        canBalance [2,1,1,1,4] `shouldBe` False
    it "False" $
        canBalance [2,3,4,1,2] `shouldBe` False
    it "True" $
        canBalance [1,2,3,1,0,2,3] `shouldBe` True
    it "False" $
        canBalance [1,2,3,1,0,1,3] `shouldBe` False
    it "False" $
        canBalance [1] `shouldBe` False
    it "True" $
        canBalance [1,1,1,2,1] `shouldBe` True
