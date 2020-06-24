{-From https://codingbat.com/prob/p185204
Given an array of ints, is it possible to divide the ints into two groups, so that the
sums of the two groups are the same. Every int must be in one group or the other. Write
a recursive helper method that takes whatever arguments you like, and make the initial
call to your recursive helper from splitArray(). (No loops needed.)
-}
import Test.Hspec


splitArray :: [Int] -> Bool
splitArray nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ splitArray [2,2] `shouldBe` True
   it "False" $ splitArray [2,3] `shouldBe` False
   it "True" $ splitArray [5,2,3] `shouldBe` True

