{-From https://codingbat.com/prob/p117665
Given a list of integers, return a list where each integer is multiplied by 2.
-}
import Test.Hspec


doubling :: [Integer] -> [Integer]
doubling nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[2,4,6]" $ doubling [1,2,3] `shouldBe` [2,4,6]
   it "[12,16,12,16,-2]" $ doubling [6,8,6,8,-1] `shouldBe` [12,16,12,16,-2]
   it "[]" $ doubling [] `shouldBe` []
   it "[2,4,6]" $ doubling [1,2,3] `shouldBe` [2,4,6]
   it "[12,16,12,16,-2]" $ doubling [6,8,6,8,-1] `shouldBe` [12,16,12,16,-2]
   it "[]" $ doubling [] `shouldBe` []

