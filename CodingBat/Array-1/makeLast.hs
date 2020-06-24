{-From https://codingbat.com/prob/p137188
Given an int array, return a new array with double the length where its last element
is the same as the original array, and all the other elements are 0. The original array
will be length 1 or more. Note: by default, a new int array contains all 0's.
-}
import Test.Hspec


makeLast :: [Int] -> [Int]
makeLast nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[0,0,0,0,0,6]" $ makeLast [4,5,6] `shouldBe` [0,0,0,0,0,6]
   it "[0,0,0,2]" $ makeLast [1,2] `shouldBe` [0,0,0,2]
   it "[0,3]" $ makeLast [3] `shouldBe` [0,3]

