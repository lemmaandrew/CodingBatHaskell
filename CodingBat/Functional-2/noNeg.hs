{-From https://codingbat.com/prob/p103456
Given a list of integers, return a list of the integers, omitting any that are less than
0.
-}
import Test.Hspec


noNeg :: [Integer] -> [Integer]
noNeg nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1]" $ noNeg [1, -2] `shouldBe` [1]
   it "[3, 3]" $ noNeg [-3, -3, 3, 3] `shouldBe` [3, 3]
   it "[]" $ noNeg [-1, -1, -1] `shouldBe` []

