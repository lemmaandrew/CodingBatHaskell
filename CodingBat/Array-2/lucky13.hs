{-From https://codingbat.com/prob/p194525
Given an array of ints, return true if the array contains no 1's and no 3's.
-}
import Test.Hspec


lucky13 :: [Int] -> Boolean
lucky13 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ lucky13 [0, 2, 4] `shouldBe` true
   it "false" $ lucky13 [1, 2, 3] `shouldBe` false
   it "false" $ lucky13 [1, 2, 4] `shouldBe` false

