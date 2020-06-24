{-From https://codingbat.com/prob/p136041
Given an array of ints, return true if the sequence of numbers 1, 2, 3 appears in the
array somewhere.
-}
import Test.Hspec


array123 :: [Int] -> Bool
array123 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ array123 [1,1,2,3,1] `shouldBe` True
   it "False" $ array123 [1,1,2,4,1] `shouldBe` False
   it "True" $ array123 [1,1,2,1,2,3] `shouldBe` True
   it "True" $ array123 [1,1,2,3,1] `shouldBe` True
   it "False" $ array123 [1,1,2,4,1] `shouldBe` False
   it "True" $ array123 [1,1,2,1,2,3] `shouldBe` True

