{-From https://codingbat.com/prob/p104627
Given an array of ints, return true if the number of 1's is greater than the number
of 4's
-}
import Test.Hspec


more14 :: [Int] -> Bool
more14 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ more14 [1,4,1] `shouldBe` True
   it "False" $ more14 [1,4,1,4] `shouldBe` False
   it "True" $ more14 [1,1] `shouldBe` True

