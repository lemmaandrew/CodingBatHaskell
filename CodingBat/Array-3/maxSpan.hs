{-From https://codingbat.com/prob/p189576
Consider the leftmost and righmost appearances of some value in an array. We'll say that
the "span" is the number of elements between the two inclusive. A single value has a
span of 1. Returns the largest span found in the given array. (Efficiency is not a priority.)
-}
import Test.Hspec


maxSpan :: [Int] -> Int
maxSpan nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "4" $ maxSpan [1, 2, 1, 1, 3] `shouldBe` 4
   it "6" $ maxSpan [1, 4, 2, 1, 4, 1, 4] `shouldBe` 6
   it "6" $ maxSpan [1, 4, 2, 1, 4, 4, 4] `shouldBe` 6

