{-From https://codingbat.com/prob/p196976
Return a version of the given array where all the 10's have been removed. The remaining
elements should shift left towards the start of the array as needed, and the empty spaces
a the end of the array should be 0. So {1, 10, 10, 2} yields {1, 2, 0, 0}. You may
modify and return the given array or make a new array.
-}
import Test.Hspec


withoutTen :: [Int] -> [Int]
withoutTen nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1, 2, 0, 0]" $ withoutTen [1, 10, 10, 2] `shouldBe` [1, 2, 0, 0]
   it "[2, 0, 0]" $ withoutTen [10, 2, 10] `shouldBe` [2, 0, 0]
   it "[1, 99, 0]" $ withoutTen [1, 99, 10] `shouldBe` [1, 99, 0]

