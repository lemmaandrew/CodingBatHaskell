{-From https://codingbat.com/prob/p145365
Given an int array, return true if the array contains 2 twice, or 3 twice. The array
will be length 0, 1, or 2.
-}
import Test.Hspec


double23 :: [Int] -> Boolean
double23 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ double23 [2, 2] `shouldBe` true
   it "true" $ double23 [3, 3] `shouldBe` true
   it "false" $ double23 [2, 3] `shouldBe` false

