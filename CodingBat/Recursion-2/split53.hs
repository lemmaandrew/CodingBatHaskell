{-From https://codingbat.com/prob/p168295
Given an array of ints, is it possible to divide the ints into two groups, so that the
sum of the two groups is the same, with these constraints: all the values that are multiple
of 5 must be in one group, and all the values that are a multiple of 3 (and not a
multiple of 5) must be in the other. (No loops needed.)
-}
import Test.Hspec


split53 :: [Int] -> Boolean
split53 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ split53 [1, 1] `shouldBe` true
   it "false" $ split53 [1, 1, 1] `shouldBe` false
   it "true" $ split53 [2, 4, 2] `shouldBe` true

