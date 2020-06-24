{-From https://codingbat.com/prob/p194525
Given an array of ints, return true if the array contains no 1's and no 3's.
-}
import Test.Hspec


lucky13 :: [Int] -> Bool
lucky13 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ lucky13 [0,2,4] `shouldBe` True
   it "False" $ lucky13 [1,2,3] `shouldBe` False
   it "False" $ lucky13 [1,2,4] `shouldBe` False
   it "True" $ lucky13 [0,2,4] `shouldBe` True
   it "False" $ lucky13 [1,2,3] `shouldBe` False
   it "False" $ lucky13 [1,2,4] `shouldBe` False

