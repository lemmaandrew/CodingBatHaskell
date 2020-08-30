{-From https://codingbat.com/prob/p137274
Given a list of integers, return a list of those numbers, omitting any that are between
13 and 19 inclusive.
-}
import Test.Hspec


noTeen :: [Integer] -> [Integer]
noTeen nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[12, 20]" $ noTeen [12, 13, 19, 20] `shouldBe` [12, 20]
   it "[1, 1]" $ noTeen [1, 14, 1] `shouldBe` [1, 1]
   it "[]" $ noTeen [15] `shouldBe` []

