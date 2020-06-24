{-From https://codingbat.com/prob/p130124
We'll say that a positive int n is "endy" if it is in the range 0..10 or 90..100 (inclusive).
Given an array of positive ints, return a new array of length "count" containing the first
endy numbers from the original array. Decompose out a separate isEndy(int n) method to
test if a number is endy. The original array will contain at least "count" endy numbers.
-}
import Test.Hspec


copyEndy :: [Int] -> Int -> [Int]
copyEndy nums count = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[9,90]" $ copyEndy [9,11,90,22,6] 2 `shouldBe` [9,90]
   it "[9,90,6]" $ copyEndy [9,11,90,22,6] 3 `shouldBe` [9,90,6]
   it "[1,1]" $ copyEndy [12,1,1,13,0,20] 2 `shouldBe` [1,1]

