{-From https://codingbat.com/prob/p171022
Given an int array length 2, return true if it contains a 2 or a 3.
-}
import Test.Hspec


has23 :: [Int] -> Boolean
has23 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ has23 [2, 5] `shouldBe` true
   it "true" $ has23 [4, 3] `shouldBe` true
   it "false" $ has23 [4, 5] `shouldBe` false

