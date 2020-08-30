{-From https://codingbat.com/prob/p167430
Given an array of ints, return true if it contains a 2, 7, 1 pattern: a value, followed
by the value plus 5, followed by the value minus 1. Additionally the 271 counts even
if the "1" differs by 2 or less from the correct value.
-}
import Test.Hspec


has271 :: [Int] -> Boolean
has271 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ has271 [1, 2, 7, 1] `shouldBe` true
   it "false" $ has271 [1, 2, 8, 1] `shouldBe` false
   it "true" $ has271 [2, 7, 1] `shouldBe` true

