{-From https://codingbat.com/prob/p164144
Given a non-empty array of ints, return a new array containing the elements from the original
array that come after the last 4 in the original array. The original array will contain
at least one 4. Note that it is valid in java to create an array of length 0.
-}
import Test.Hspec


post4 :: [Int] -> [Int]
post4 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1, 2]" $ post4 [2, 4, 1, 2] `shouldBe` [1, 2]
   it "[2]" $ post4 [4, 1, 4, 2] `shouldBe` [2]
   it "[1, 2, 3]" $ post4 [4, 4, 1, 2, 3] `shouldBe` [1, 2, 3]

