{- From https://codingbat.com/prob/p199368
Given an array of ints, is it possible to choose a group of some of the ints, beginning 
at the start index, such that the group sums to the given target? However, with the 
additional constraint that all 6's must be chosen. (No loops needed.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


groupSum6 :: Int -> [Int] -> Int -> Bool
groupSum6 start nums target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        groupSum6 0 [5,6,2] 8 `shouldBe` True
    it "False" $
        groupSum6 0 [5,6,2] 9 `shouldBe` False
    it "False" $
        groupSum6 0 [5,6,2] 7 `shouldBe` False
    it "True" $
        groupSum6 0 [1] 1 `shouldBe` True
    it "False" $
        groupSum6 0 [9] 1 `shouldBe` False
    it "True" $
        groupSum6 0 [] 0 `shouldBe` True
    it "True" $
        groupSum6 0 [3,2,4,6] 8 `shouldBe` True
    it "True" $
        groupSum6 0 [6,2,4,3] 8 `shouldBe` True
    it "False" $
        groupSum6 0 [5,2,4,6] 9 `shouldBe` False
    it "False" $
        groupSum6 0 [6,2,4,5] 9 `shouldBe` False
    it "False" $
        groupSum6 0 [3,2,4,6] 3 `shouldBe` False
    it "True" $
        groupSum6 0 [1,6,2,6,4] 12 `shouldBe` True
    it "True" $
        groupSum6 0 [1,6,2,6,4] 13 `shouldBe` True
    it "False" $
        groupSum6 0 [1,6,2,6,4] 4 `shouldBe` False
    it "False" $
        groupSum6 0 [1,6,2,6,4] 9 `shouldBe` False
    it "True" $
        groupSum6 0 [1,6,2,6,5] 14 `shouldBe` True
    it "True" $
        groupSum6 0 [1,6,2,6,5] 15 `shouldBe` True
    it "False" $
        groupSum6 0 [1,6,2,6,5] 16 `shouldBe` False
