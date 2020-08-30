{-From https://codingbat.com/prob/p134174
Given an array of positive ints, return a new array of length "count" containing the first
even numbers from the original array. The original array will contain at least "count"
even numbers.
-}
import Test.Hspec


copyEvens :: [Int] -> Int -> [Int]
copyEvens nums count = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[2, 4]" $ copyEvens [3, 2, 4, 5, 8] 2 `shouldBe` [2, 4]
   it "[2, 4, 8]" $ copyEvens [3, 2, 4, 5, 8] 3 `shouldBe` [2, 4, 8]
   it "[6, 2, 4]" $ copyEvens [6, 1, 2, 4, 5, 8] 3 `shouldBe` [6, 2, 4]

