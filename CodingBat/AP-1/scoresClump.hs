{- From https://codingbat.com/prob/p194530
Given an array of scores sorted in increasing order, return true if the array contains 
3 adjacent scores that differ from each other by at most 2, such as with {3, 4, 5} 
or {3, 5, 5}.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


scoresClump :: [Int] -> Bool
scoresClump scores = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        scoresClump [3,4,5] `shouldBe` True
    it "False" $
        scoresClump [3,4,6] `shouldBe` False
    it "True" $
        scoresClump [1,3,5,5] `shouldBe` True
    it "True" $
        scoresClump [2,4,5,6] `shouldBe` True
    it "False" $
        scoresClump [2,4,5,7] `shouldBe` False
    it "True" $
        scoresClump [2,4,4,7] `shouldBe` True
    it "False" $
        scoresClump [3,3,6,7,9] `shouldBe` False
    it "True" $
        scoresClump [3,3,7,7,9] `shouldBe` True
    it "False" $
        scoresClump [4,5,8] `shouldBe` False
