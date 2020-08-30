{-From https://codingbat.com/prob/p104627
Given an array of ints, return true if the number of 1's is greater than the number
of 4's
-}
import Test.Hspec


more14 :: [Int] -> Boolean
more14 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ more14 [1, 4, 1] `shouldBe` true
   it "false" $ more14 [1, 4, 1, 4] `shouldBe` false
   it "true" $ more14 [1, 1] `shouldBe` true

