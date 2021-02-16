{- From https://codingbat.com/prob/p138907
Given an array of ints, is it possible to choose a group of some of the ints, such 
that the group sums to the given target with these additional constraints: all multiples 
of 5 in the array must be included in the group. If the value immediately following 
a multiple of 5 is 1, it must not be chosen. (No loops needed.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


groupSum5 :: Int -> [Int] -> Int -> Bool
groupSum5 start nums target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        groupSum5 0 [2,5,10,4] 19 `shouldBe` True
    it "True" $
        groupSum5 0 [2,5,10,4] 17 `shouldBe` True
    it "False" $
        groupSum5 0 [2,5,10,4] 12 `shouldBe` False
    it "False" $
        groupSum5 0 [2,5,4,10] 12 `shouldBe` False
    it "False" $
        groupSum5 0 [3,5,1] 4 `shouldBe` False
    it "True" $
        groupSum5 0 [3,5,1] 5 `shouldBe` True
    it "True" $
        groupSum5 0 [1,3,5] 5 `shouldBe` True
    it "False" $
        groupSum5 0 [3,5,1] 9 `shouldBe` False
    it "False" $
        groupSum5 0 [2,5,10,4] 7 `shouldBe` False
    it "True" $
        groupSum5 0 [2,5,10,4] 15 `shouldBe` True
    it "False" $
        groupSum5 0 [2,5,10,4] 11 `shouldBe` False
    it "True" $
        groupSum5 0 [1] 1 `shouldBe` True
    it "False" $
        groupSum5 0 [9] 1 `shouldBe` False
    it "True" $
        groupSum5 0 [9] 0 `shouldBe` True
    it "True" $
        groupSum5 0 [] 0 `shouldBe` True
