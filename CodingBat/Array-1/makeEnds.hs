{-From https://codingbat.com/prob/p101230
Given an array of ints, return a new array length 2 containing the first and last elements
from the original array. The original array will be length 1 or more.
-}
import Test.Hspec


makeEnds :: [Int] -> [Int]
makeEnds nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1, 3]" $ makeEnds [1, 2, 3] `shouldBe` [1, 3]
   it "[1, 4]" $ makeEnds [1, 2, 3, 4] `shouldBe` [1, 4]
   it "[7, 2]" $ makeEnds [7, 4, 6, 2] `shouldBe` [7, 2]

