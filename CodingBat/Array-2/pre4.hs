{-From https://codingbat.com/prob/p100246
Given a non-empty array of ints, return a new array containing the elements from the original
array that come before the first 4 in the original array. The original array will contain
at least one 4. Note that it is valid in java to create an array of length 0.
-}
import Test.Hspec


pre4 :: [Int] -> [Int]
pre4 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1, 2]" $ pre4 [1, 2, 4, 1] `shouldBe` [1, 2]
   it "[3, 1]" $ pre4 [3, 1, 4] `shouldBe` [3, 1]
   it "[1]" $ pre4 [1, 4, 4] `shouldBe` [1]

