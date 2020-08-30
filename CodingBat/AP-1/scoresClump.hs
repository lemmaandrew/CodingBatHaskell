{-From https://codingbat.com/prob/p194530
Given an array of scores sorted in increasing order, return true if the array contains
3 adjacent scores that differ from each other by at most 2, such as with {3, 4, 5}
or {3, 5, 5}.
-}
import Test.Hspec


scoresClump :: [Int] -> Boolean
scoresClump scores = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ scoresClump [3, 4, 5] `shouldBe` true
   it "false" $ scoresClump [3, 4, 6] `shouldBe` false
   it "true" $ scoresClump [1, 3, 5, 5] `shouldBe` true

