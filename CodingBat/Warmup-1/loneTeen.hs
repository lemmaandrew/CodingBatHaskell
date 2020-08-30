{-From https://codingbat.com/prob/p165701
We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 2 int
values, return true if one or the other is teen, but not both.
-}
import Test.Hspec


loneTeen :: Int -> Int -> Boolean
loneTeen a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ loneTeen 13 99 `shouldBe` true
   it "true" $ loneTeen 21 19 `shouldBe` true
   it "false" $ loneTeen 13 13 `shouldBe` false

