{-From https://codingbat.com/prob/p191991
Given 2 arrays of ints, a and b, return true if they have the same first element or
they have the same last element. Both arrays will be length 1 or more.
-}
import Test.Hspec


commonEnd :: [Int] -> [Int] -> Boolean
commonEnd a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ commonEnd [1, 2, 3] [7, 3] `shouldBe` true
   it "false" $ commonEnd [1, 2, 3] [7, 3, 2] `shouldBe` false
   it "true" $ commonEnd [1, 2, 3] [1, 3] `shouldBe` true

