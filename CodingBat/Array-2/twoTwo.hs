{- From https://codingbat.com/prob/p102145
Given an array of ints, return true if every 2 that appears in the array is next 
to another 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


twoTwo :: [Int] -> Bool
twoTwo nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        twoTwo [4,2,2,3] `shouldBe` True
    it "True" $
        twoTwo [2,2,4] `shouldBe` True
    it "False" $
        twoTwo [2,2,4,2] `shouldBe` False
    it "True" $
        twoTwo [1,3,4] `shouldBe` True
    it "True" $
        twoTwo [1,2,2,3,4] `shouldBe` True
    it "False" $
        twoTwo [1,2,3,4] `shouldBe` False
    it "True" $
        twoTwo [2,2] `shouldBe` True
    it "True" $
        twoTwo [2,2,7] `shouldBe` True
    it "False" $
        twoTwo [2,2,7,2,1] `shouldBe` False
    it "True" $
        twoTwo [4,2,2,2] `shouldBe` True
    it "True" $
        twoTwo [2,2,2] `shouldBe` True
    it "False" $
        twoTwo [1,2] `shouldBe` False
    it "False" $
        twoTwo [2] `shouldBe` False
    it "True" $
        twoTwo [1] `shouldBe` True
    it "True" $
        twoTwo [] `shouldBe` True
    it "True" $
        twoTwo [5,2,2,3] `shouldBe` True
    it "False" $
        twoTwo [2,2,5,2] `shouldBe` False
