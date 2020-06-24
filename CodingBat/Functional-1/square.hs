{-From https://codingbat.com/prob/p139586
Given a list of integers, return a list where each integer is multiplied with itself.
-}
import Test.Hspec


square :: [Integer] -> [Integer]
square nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1,4,9]" $ square [1,2,3] `shouldBe` [1,4,9]
   it "[36,64,36,64,1]" $ square [6,8,-6,-8,1] `shouldBe` [36,64,36,64,1]
   it "[]" $ square [] `shouldBe` []

