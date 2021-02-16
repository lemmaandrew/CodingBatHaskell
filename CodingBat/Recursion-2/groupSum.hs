{- From https://codingbat.com/prob/p145416
Given an array of ints, is it possible to choose a group of some of the ints, such 
that the group sums to the given target? This is a classic backtracking recursion problem. 
Once you understand the recursive backtracking strategy in this problem, you can use 
the same pattern for many problems to search a space of choices. Rather than looking 
at the whole array, our convention is to consider the part of the array starting at 
index start and continuing to the end of the array. The caller can specify the whole array 
simply by passing start as 0. No loops are needed -- the recursive calls progress down 
the array. 
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


groupSum :: Int -> [Int] -> Int -> Bool
groupSum start nums target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        groupSum 0 [2,4,8] 10 `shouldBe` True
    it "True" $
        groupSum 0 [2,4,8] 14 `shouldBe` True
    it "False" $
        groupSum 0 [2,4,8] 9 `shouldBe` False
    it "True" $
        groupSum 0 [2,4,8] 8 `shouldBe` True
    it "True" $
        groupSum 1 [2,4,8] 8 `shouldBe` True
    it "False" $
        groupSum 1 [2,4,8] 2 `shouldBe` False
    it "True" $
        groupSum 0 [1] 1 `shouldBe` True
    it "False" $
        groupSum 0 [9] 1 `shouldBe` False
    it "True" $
        groupSum 1 [9] 0 `shouldBe` True
    it "True" $
        groupSum 0 [] 0 `shouldBe` True
    it "True" $
        groupSum 0 [10,2,2,5] 17 `shouldBe` True
    it "True" $
        groupSum 0 [10,2,2,5] 15 `shouldBe` True
    it "True" $
        groupSum 0 [10,2,2,5] 9 `shouldBe` True
