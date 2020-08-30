{-From https://codingbat.com/prob/p179487
Given an array of scores, return true if there are scores of 100 next to each other
in the array. The array length will be at least 2.
-}
import Test.Hspec


scores100 :: [Int] -> Boolean
scores100 scores = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ scores100 [1, 100, 100] `shouldBe` true
   it "false" $ scores100 [1, 100, 99, 100] `shouldBe` false
   it "true" $ scores100 [100, 1, 100, 100] `shouldBe` true

