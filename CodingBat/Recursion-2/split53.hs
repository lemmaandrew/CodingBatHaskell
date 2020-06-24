{-From https://codingbat.com/prob/p168295
Given an array of ints, is it possible to divide the ints into two groups, so that the
sum of the two groups is the same, with these constraints: all the values that are multiple
of 5 must be in one group, and all the values that are a multiple of 3 (and not a
multiple of 5) must be in the other. (No loops needed.)
-}
import Test.Hspec


split53 :: [Int] -> Bool
split53 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ split53 [1,1] `shouldBe` True
   it "False" $ split53 [1,1,1] `shouldBe` False
   it "True" $ split53 [2,4,2] `shouldBe` True

