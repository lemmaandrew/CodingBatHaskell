{-From https://codingbat.com/prob/p159979
Given an array of ints, return true if the array contains either 3 even or 3 odd values
all next to each other.
-}
import Test.Hspec


modThree :: [Int] -> Bool
modThree nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ modThree [2,1,3,5] `shouldBe` True
   it "False" $ modThree [2,1,2,5] `shouldBe` False
   it "True" $ modThree [2,4,2,5] `shouldBe` True

