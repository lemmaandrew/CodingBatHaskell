{-From https://codingbat.com/prob/p175763
Given an array of ints length 3, return the sum of all the elements.
-}
import Test.Hspec


sum3 :: [Int] -> Int
sum3 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ sum3 [1, 2, 3] `shouldBe` 6
   it "18" $ sum3 [5, 11, 2] `shouldBe` 18
   it "7" $ sum3 [7, 0, 0] `shouldBe` 7

