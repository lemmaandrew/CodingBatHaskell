{-From https://codingbat.com/prob/p118976
Given an array of ints, return true if the array is length 1 or more, and the first
element and the last element are equal.
-}
import Test.Hspec


sameFirstLast :: [Int] -> Boolean
sameFirstLast nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "false" $ sameFirstLast [1, 2, 3] `shouldBe` false
   it "true" $ sameFirstLast [1, 2, 3, 1] `shouldBe` true
   it "true" $ sameFirstLast [1, 2, 1] `shouldBe` true

