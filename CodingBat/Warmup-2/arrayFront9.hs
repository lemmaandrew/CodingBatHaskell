{-From https://codingbat.com/prob/p186031
Given an array of ints, return true if one of the first 4 elements in the array is
a 9. The array length may be less than 4.
-}
import Test.Hspec


arrayFront9 :: [Int] -> Bool
arrayFront9 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ arrayFront9 [1,2,9,3,4] `shouldBe` True
   it "False" $ arrayFront9 [1,2,3,4,9] `shouldBe` False
   it "False" $ arrayFront9 [1,2,3,4,5] `shouldBe` False

