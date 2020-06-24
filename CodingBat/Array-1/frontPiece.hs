{-From https://codingbat.com/prob/p142455
Given an int array of any length, return a new array of its first 2 elements. If the
array is smaller than length 2, use whatever elements are present.
-}
import Test.Hspec


frontPiece :: [Int] -> [Int]
frontPiece nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1,2]" $ frontPiece [1,2,3] `shouldBe` [1,2]
   it "[1,2]" $ frontPiece [1,2] `shouldBe` [1,2]
   it "[1]" $ frontPiece [1] `shouldBe` [1]

