{- From https://codingbat.com/prob/p191878
Given an array of ints, return true if the array contains a 2 next to a 2 or a 4 
next to a 4, but not both.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


either24 :: [Int] -> Bool
either24 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        either24 [1,2,2] `shouldBe` True
    it "True" $
        either24 [4,4,1] `shouldBe` True
    it "False" $
        either24 [4,4,1,2,2] `shouldBe` False
    it "False" $
        either24 [1,2,3,4] `shouldBe` False
    it "False" $
        either24 [3,5,9] `shouldBe` False
    it "True" $
        either24 [1,2,3,4,4] `shouldBe` True
    it "True" $
        either24 [2,2,3,4] `shouldBe` True
    it "True" $
        either24 [1,2,3,2,2,4] `shouldBe` True
    it "False" $
        either24 [1,2,3,2,2,4,4] `shouldBe` False
    it "False" $
        either24 [1,2] `shouldBe` False
    it "True" $
        either24 [2,2] `shouldBe` True
    it "True" $
        either24 [4,4] `shouldBe` True
    it "False" $
        either24 [2] `shouldBe` False
    it "False" $
        either24 [] `shouldBe` False
