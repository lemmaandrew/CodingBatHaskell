{-From https://codingbat.com/prob/p136648
Given an array of ints, return true if it contains no 1's or it contains no 4's.
-}
import Test.Hspec


no14 :: [Int] -> Boolean
no14 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ no14 [1, 2, 3] `shouldBe` true
   it "false" $ no14 [1, 2, 3, 4] `shouldBe` false
   it "true" $ no14 [2, 3, 4] `shouldBe` true

