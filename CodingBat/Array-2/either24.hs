{-From https://codingbat.com/prob/p191878
Given an array of ints, return true if the array contains a 2 next to a 2 or a 4
next to a 4, but not both.
-}
import Test.Hspec


either24 :: [Int] -> Boolean
either24 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ either24 [1, 2, 2] `shouldBe` true
   it "true" $ either24 [4, 4, 1] `shouldBe` true
   it "false" $ either24 [4, 4, 1, 2, 2] `shouldBe` false

