{-From https://codingbat.com/prob/p146974
Given an array of scores, return true if each score is equal or greater than the one
before. The array will be length 2 or more.
-}
import Test.Hspec


scoresIncreasing :: [Int] -> Boolean
scoresIncreasing scores = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ scoresIncreasing [1, 3, 4] `shouldBe` true
   it "false" $ scoresIncreasing [1, 3, 2] `shouldBe` false
   it "true" $ scoresIncreasing [1, 1, 4] `shouldBe` true

