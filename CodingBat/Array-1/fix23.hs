{-From https://codingbat.com/prob/p120347
Given an int array length 3, if there is a 2 in the array immediately followed by a
3, set the 3 element to 0. Return the changed array.
-}
import Test.Hspec


fix23 :: [Int] -> [Int]
fix23 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1,2,0]" $ fix23 [1,2,3] `shouldBe` [1,2,0]
   it "[2,0,5]" $ fix23 [2,3,5] `shouldBe` [2,0,5]
   it "[1,2,1]" $ fix23 [1,2,1] `shouldBe` [1,2,1]

