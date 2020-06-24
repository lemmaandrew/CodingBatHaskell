{-From https://codingbat.com/prob/p158767
Given a non-empty array, return true if there is a place to split the array so that
the sum of the numbers on one side is equal to the sum of the numbers on the other
side.
-}
import Test.Hspec


canBalance :: [Int] -> Bool
canBalance nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ canBalance [1,1,1,2,1] `shouldBe` True
   it "False" $ canBalance [2,1,1,2,1] `shouldBe` False
   it "True" $ canBalance [10,10] `shouldBe` True
   it "True" $ canBalance [1,1,1,2,1] `shouldBe` True
   it "False" $ canBalance [2,1,1,2,1] `shouldBe` False
   it "True" $ canBalance [10,10] `shouldBe` True

