{-From https://codingbat.com/prob/p196640
Given an array length 1 or more of ints, return the difference between the largest and
smallest values in the array. Note: the built-in Math.min(v1, v2) and Math.max(v1, v2) methods
   return the smaller or larger of two values.
-}
import Test.Hspec


bigDiff :: [Int] -> Int
bigDiff nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "7" $ bigDiff [10,3,5,6] `shouldBe` 7
   it "8" $ bigDiff [7,2,10,9] `shouldBe` 8
   it "8" $ bigDiff [2,10,7,2] `shouldBe` 8

