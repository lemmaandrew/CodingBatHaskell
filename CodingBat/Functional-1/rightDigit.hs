{-From https://codingbat.com/prob/p152194
Given a list of non-negative integers, return an integer list of the rightmost digits.
(Note: use %)
-}
import Test.Hspec


rightDigit :: [Integer] -> [Integer]
rightDigit nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1,2,3]" $ rightDigit [1,22,93] `shouldBe` [1,2,3]
   it "[6,8,6,8,1]" $ rightDigit [16,8,886,8,1] `shouldBe` [6,8,6,8,1]
   it "[0,0]" $ rightDigit [10,0] `shouldBe` [0,0]
   it "[1,2,3]" $ rightDigit [1,22,93] `shouldBe` [1,2,3]
   it "[6,8,6,8,1]" $ rightDigit [16,8,886,8,1] `shouldBe` [6,8,6,8,1]
   it "[0,0]" $ rightDigit [10,0] `shouldBe` [0,0]

