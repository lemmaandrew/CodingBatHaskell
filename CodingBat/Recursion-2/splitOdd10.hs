{-From https://codingbat.com/prob/p171660
Given an array of ints, is it possible to divide the ints into two groups, so that the
sum of one group is a multiple of 10, and the sum of the other group is odd. Every
int must be in one group or the other. Write a recursive helper method that takes whatever
arguments you like, and make the initial call to your recursive helper from splitOdd10().
(No loops needed.)
-}
import Test.Hspec


splitOdd10 :: [Int] -> Boolean
splitOdd10 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ splitOdd10 [5, 5, 5] `shouldBe` true
   it "false" $ splitOdd10 [5, 5, 6] `shouldBe` false
   it "true" $ splitOdd10 [5, 5, 6, 1] `shouldBe` true

