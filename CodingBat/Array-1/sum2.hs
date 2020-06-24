{-From https://codingbat.com/prob/p190968
Given an array of ints, return the sum of the first 2 elements in the array. If the
array length is less than 2, just sum up the elements that exist, returning 0 if the
array is length 0.
-}
import Test.Hspec


sum2 :: [Int] -> Int
sum2 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ sum2 [1,2,3] `shouldBe` 3
   it "2" $ sum2 [1,1] `shouldBe` 2
   it "2" $ sum2 [1,1,1,1] `shouldBe` 2

