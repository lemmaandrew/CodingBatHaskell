{-From https://codingbat.com/prob/p136648
Given an array of ints, return true if it contains no 1's or it contains no 4's.
-}
import Test.Hspec


no14 :: [Int] -> Bool
no14 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ no14 [1,2,3] `shouldBe` True
   it "False" $ no14 [1,2,3,4] `shouldBe` False
   it "True" $ no14 [2,3,4] `shouldBe` True
   it "True" $ no14 [1,2,3] `shouldBe` True
   it "False" $ no14 [1,2,3,4] `shouldBe` False
   it "True" $ no14 [2,3,4] `shouldBe` True

