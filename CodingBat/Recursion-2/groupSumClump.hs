{- From https://codingbat.com/prob/p105136
Given an array of ints, is it possible to choose a group of some of the ints, such 
that the group sums to the given target, with this additional constraint: if there are 
numbers in the array that are adjacent and the identical value, they must either all be 
chosen, or none of them chosen. For example, with the array {1, 2, 2, 2, 5, 2}, either all 
three 2's in the middle must be chosen or not, all as a group. (one loop can be used to 
find the extent of the identical values).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


groupSumClump :: Int -> [Int] -> Int -> Bool
groupSumClump start nums target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        groupSumClump 0 [2,4,8] 10 `shouldBe` True
    it "True" $
        groupSumClump 0 [1,2,4,8,1] 14 `shouldBe` True
    it "False" $
        groupSumClump 0 [2,4,4,8] 14 `shouldBe` False
    it "True" $
        groupSumClump 0 [8,2,2,1] 9 `shouldBe` True
    it "False" $
        groupSumClump 0 [8,2,2,1] 11 `shouldBe` False
    it "True" $
        groupSumClump 0 [1] 1 `shouldBe` True
    it "False" $
        groupSumClump 0 [9] 1 `shouldBe` False
