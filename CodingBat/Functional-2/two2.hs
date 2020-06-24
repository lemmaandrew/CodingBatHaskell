{-From https://codingbat.com/prob/p148198
Given a list of non-negative integers, return a list of those numbers multiplied by 2,
omitting any of the resulting numbers that end in 2.
-}
import Test.Hspec


two2 :: [Integer] -> [Integer]
two2 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[4,6]" $ two2 [1,2,3] `shouldBe` [4,6]
   it "[4]" $ two2 [2,6,11] `shouldBe` [4]
   it "[0]" $ two2 [0] `shouldBe` [0]
   it "[4,6]" $ two2 [1,2,3] `shouldBe` [4,6]
   it "[4]" $ two2 [2,6,11] `shouldBe` [4]
   it "[0]" $ two2 [0] `shouldBe` [0]

