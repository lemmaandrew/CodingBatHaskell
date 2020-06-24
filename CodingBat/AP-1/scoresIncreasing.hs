{-From https://codingbat.com/prob/p146974
Given an array of scores, return true if each score is equal or greater than the one
before. The array will be length 2 or more.
-}
import Test.Hspec


scoresIncreasing :: [Int] -> Bool
scoresIncreasing scores = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ scoresIncreasing [1,3,4] `shouldBe` True
   it "False" $ scoresIncreasing [1,3,2] `shouldBe` False
   it "True" $ scoresIncreasing [1,1,4] `shouldBe` True

