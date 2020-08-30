{-From https://codingbat.com/prob/p178986
We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 3 int
values, return true if 1 or more of them are teen.
-}
import Test.Hspec


hasTeen :: Int -> Int -> Int -> Boolean
hasTeen a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ hasTeen 13 20 10 `shouldBe` true
   it "true" $ hasTeen 20 19 10 `shouldBe` true
   it "true" $ hasTeen 20 10 13 `shouldBe` true

