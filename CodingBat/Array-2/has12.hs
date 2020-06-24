{-From https://codingbat.com/prob/p169260
Given an array of ints, return true if there is a 1 in the array with a 2 somewhere
later in the array.
-}
import Test.Hspec


has12 :: [Int] -> Bool
has12 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ has12 [1,3,2] `shouldBe` True
   it "True" $ has12 [3,1,2] `shouldBe` True
   it "True" $ has12 [3,1,4,5,2] `shouldBe` True

