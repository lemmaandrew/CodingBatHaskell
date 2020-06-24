{-From https://codingbat.com/prob/p194530
Given an array of scores sorted in increasing order, return true if the array contains
3 adjacent scores that differ from each other by at most 2, such as with {3, 4, 5}
or {3, 5, 5}.
-}
import Test.Hspec


scoresClump :: [Int] -> Bool
scoresClump scores = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ scoresClump [3,4,5] `shouldBe` True
   it "False" $ scoresClump [3,4,6] `shouldBe` False
   it "True" $ scoresClump [1,3,5,5] `shouldBe` True

