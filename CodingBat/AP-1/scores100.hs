{- From https://codingbat.com/prob/p179487
Given an array of scores, return true if there are scores of 100 next to each other 
in the array. The array length will be at least 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


scores100 :: [Int] -> Bool
scores100 scores = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        scores100 [1,100,100] `shouldBe` True
    it "False" $
        scores100 [1,100,99,100] `shouldBe` False
    it "True" $
        scores100 [100,1,100,100] `shouldBe` True
    it "False" $
        scores100 [100,1,100,1] `shouldBe` False
    it "False" $
        scores100 [1,2,3,4,5] `shouldBe` False
    it "False" $
        scores100 [1,2,100,4,5] `shouldBe` False
