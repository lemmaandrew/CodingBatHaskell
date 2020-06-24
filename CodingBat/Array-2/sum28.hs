{-From https://codingbat.com/prob/p199612
Given an array of ints, return true if the sum of all the 2's in the array is exactly
8.
-}
import Test.Hspec


sum28 :: [Int] -> Bool
sum28 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ sum28 [2,3,2,2,4,2] `shouldBe` True
   it "False" $ sum28 [2,3,2,2,4,2,2] `shouldBe` False
   it "False" $ sum28 [1,2,3,4] `shouldBe` False

