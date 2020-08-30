{-From https://codingbat.com/prob/p102145
Given an array of ints, return true if every 2 that appears in the array is next to
another 2.
-}
import Test.Hspec


twoTwo :: [Int] -> Boolean
twoTwo nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ twoTwo [4, 2, 2, 3] `shouldBe` true
   it "true" $ twoTwo [2, 2, 4] `shouldBe` true
   it "false" $ twoTwo [2, 2, 4, 2] `shouldBe` false

