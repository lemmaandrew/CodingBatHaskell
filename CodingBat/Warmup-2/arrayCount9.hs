{-From https://codingbat.com/prob/p184031
Given an array of ints, return the number of 9's in the array.
-}
import Test.Hspec


arrayCount9 :: [Int] -> Int
arrayCount9 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ arrayCount9 [1, 2, 9] `shouldBe` 1
   it "2" $ arrayCount9 [1, 9, 9] `shouldBe` 2
   it "3" $ arrayCount9 [1, 9, 9, 3, 9] `shouldBe` 3

