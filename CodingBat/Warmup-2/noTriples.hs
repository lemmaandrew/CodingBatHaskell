{-From https://codingbat.com/prob/p170221
Given an array of ints, we'll say that a triple is a value appearing 3 times in a row
in the array. Return true if the array does not contain any triples.
-}
import Test.Hspec


noTriples :: [Int] -> Boolean
noTriples nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ noTriples [1, 1, 2, 2, 1] `shouldBe` true
   it "false" $ noTriples [1, 1, 2, 2, 2, 1] `shouldBe` false
   it "false" $ noTriples [1, 1, 1, 2, 2, 2, 1] `shouldBe` false

