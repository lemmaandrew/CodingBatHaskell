{-From https://codingbat.com/prob/p185685
Given an array of ints, return true if 6 appears as either the first or last element
in the array. The array will be length 1 or more.
-}
import Test.Hspec


firstLast6 :: [Int] -> Bool
firstLast6 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ firstLast6 [1,2,6] `shouldBe` True
   it "True" $ firstLast6 [6,1,2,3] `shouldBe` True
   it "False" $ firstLast6 [13,6,1,2,3] `shouldBe` False
   it "True" $ firstLast6 [1,2,6] `shouldBe` True
   it "True" $ firstLast6 [6,1,2,3] `shouldBe` True
   it "False" $ firstLast6 [13,6,1,2,3] `shouldBe` False

