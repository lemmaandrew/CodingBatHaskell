{-From https://codingbat.com/prob/p109783
Given an array of ints, return true if the value 3 appears in the array exactly 3 times,
and no 3's are next to each other.
-}
import Test.Hspec


haveThree :: [Int] -> Boolean
haveThree nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ haveThree [3, 1, 3, 1, 3] `shouldBe` true
   it "false" $ haveThree [3, 1, 3, 3] `shouldBe` false
   it "false" $ haveThree [3, 4, 3, 3, 4] `shouldBe` false

