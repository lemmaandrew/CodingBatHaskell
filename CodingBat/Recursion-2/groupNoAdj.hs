{- From https://codingbat.com/prob/p169605
Given an array of ints, is it possible to choose a group of some of the ints, such 
that the group sums to the given target with this additional constraint: If a value in 
the array is chosen to be in the group, the value immediately following it in the array 
must not be chosen. (No loops needed.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


groupNoAdj :: Int -> [Int] -> Int -> Bool
groupNoAdj start nums target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        groupNoAdj 0 [2,5,10,4] 12 `shouldBe` True
    it "False" $
        groupNoAdj 0 [2,5,10,4] 14 `shouldBe` False
    it "False" $
        groupNoAdj 0 [2,5,10,4] 7 `shouldBe` False
    it "True" $
        groupNoAdj 0 [2,5,10,4,2] 7 `shouldBe` True
    it "True" $
        groupNoAdj 0 [2,5,10,4] 9 `shouldBe` True
    it "True" $
        groupNoAdj 0 [10,2,2,3,3] 15 `shouldBe` True
    it "False" $
        groupNoAdj 0 [10,2,2,3,3] 7 `shouldBe` False
    it "True" $
        groupNoAdj 0 [] 0 `shouldBe` True
    it "True" $
        groupNoAdj 0 [1] 1 `shouldBe` True
    it "False" $
        groupNoAdj 0 [9] 1 `shouldBe` False
    it "True" $
        groupNoAdj 0 [9] 0 `shouldBe` True
    it "True" $
        groupNoAdj 0 [5,10,4,1] 11 `shouldBe` True
