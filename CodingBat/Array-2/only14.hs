{-From https://codingbat.com/prob/p186672
Given an array of ints, return true if every element is a 1 or a 4.
-}
import Test.Hspec


only14 :: [Int] -> Boolean
only14 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ only14 [1, 4, 1, 4] `shouldBe` true
   it "false" $ only14 [1, 4, 2, 4] `shouldBe` false
   it "true" $ only14 [1, 1] `shouldBe` true

