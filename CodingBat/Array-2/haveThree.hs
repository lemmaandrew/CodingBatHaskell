{- From https://codingbat.com/prob/p109783
Given an array of ints, return true if the value 3 appears in the array exactly 3 
times, and no 3's are next to each other.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


haveThree :: [Int] -> Bool
haveThree nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        haveThree [3,1,3,1,3] `shouldBe` True
    it "False" $
        haveThree [3,1,3,3] `shouldBe` False
    it "False" $
        haveThree [3,4,3,3,4] `shouldBe` False
    it "False" $
        haveThree [1,3,1,3,1,2] `shouldBe` False
    it "True" $
        haveThree [1,3,1,3,1,3] `shouldBe` True
    it "False" $
        haveThree [1,3,3,1,3] `shouldBe` False
    it "False" $
        haveThree [1,3,1,3,1,3,4,3] `shouldBe` False
    it "True" $
        haveThree [3,4,3,4,3,4,4] `shouldBe` True
    it "False" $
        haveThree [3,3,3] `shouldBe` False
    it "False" $
        haveThree [1,3] `shouldBe` False
    it "False" $
        haveThree [3] `shouldBe` False
    it "False" $
        haveThree [1] `shouldBe` False
