{-From https://codingbat.com/prob/p158767
Given a non-empty array, return true if there is a place to split the array so that
the sum of the numbers on one side is equal to the sum of the numbers on the other
side.
-}
import Test.Hspec


canBalance :: [Int] -> Boolean
canBalance nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ canBalance [1, 1, 1, 2, 1] `shouldBe` true
   it "false" $ canBalance [2, 1, 1, 2, 1] `shouldBe` false
   it "true" $ canBalance [10, 10] `shouldBe` true

