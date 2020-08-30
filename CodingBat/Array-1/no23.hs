{-From https://codingbat.com/prob/p175689
Given an int array length 2, return true if it does not contain a 2 or 3.
-}
import Test.Hspec


no23 :: [Int] -> Boolean
no23 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ no23 [4, 5] `shouldBe` true
   it "false" $ no23 [4, 2] `shouldBe` false
   it "false" $ no23 [3, 5] `shouldBe` false

