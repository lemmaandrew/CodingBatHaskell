{-From https://codingbat.com/prob/p132748
Given a list of integers, return a list of those numbers squared and the product added
to 10, omitting any of the resulting numbers that end in 5 or 6.
-}
import Test.Hspec


square56 :: [Integer] -> [Integer]
square56 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[19, 11]" $ square56 [3, 1, 4] `shouldBe` [19, 11]
   it "[11]" $ square56 [1] `shouldBe` [11]
   it "[14]" $ square56 [2] `shouldBe` [14]

