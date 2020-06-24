{-From https://codingbat.com/prob/p171022
Given an int array length 2, return true if it contains a 2 or a 3.
-}
import Test.Hspec


has23 :: [Int] -> Bool
has23 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ has23 [2,5] `shouldBe` True
   it "True" $ has23 [4,3] `shouldBe` True
   it "False" $ has23 [4,5] `shouldBe` False

