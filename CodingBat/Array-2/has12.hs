{- From https://codingbat.com/prob/p169260
Given an array of ints, return true if there is a 1 in the array with a 2 somewhere 
later in the array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


has12 :: [Int] -> Bool
has12 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        has12 [1,3,2] `shouldBe` True
    it "True" $
        has12 [3,1,2] `shouldBe` True
    it "True" $
        has12 [3,1,4,5,2] `shouldBe` True
    it "False" $
        has12 [3,1,4,5,6] `shouldBe` False
    it "True" $
        has12 [3,1,4,1,6,2] `shouldBe` True
    it "True" $
        has12 [2,1,4,1,6,2] `shouldBe` True
    it "False" $
        has12 [2,1,4,1,6] `shouldBe` False
    it "False" $
        has12 [1] `shouldBe` False
    it "False" $
        has12 [2,1,3] `shouldBe` False
    it "True" $
        has12 [2,1,3,2] `shouldBe` True
    it "False" $
        has12 [2] `shouldBe` False
    it "False" $
        has12 [3,2] `shouldBe` False
    it "True" $
        has12 [3,1,3,2] `shouldBe` True
    it "False" $
        has12 [3,5,9] `shouldBe` False
    it "False" $
        has12 [3,5,1] `shouldBe` False
    it "False" $
        has12 [3,2,1] `shouldBe` False
    it "True" $
        has12 [1,2] `shouldBe` True
