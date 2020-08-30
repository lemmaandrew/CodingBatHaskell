{-From https://codingbat.com/prob/p185176
Given an array of ints of odd length, look at the first, last, and middle values in
the array and return the largest. The array length will be a least 1.
-}
import Test.Hspec


maxTriple :: [Int] -> Int
maxTriple nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ maxTriple [1, 2, 3] `shouldBe` 3
   it "5" $ maxTriple [1, 5, 3] `shouldBe` 5
   it "5" $ maxTriple [5, 2, 3] `shouldBe` 5

