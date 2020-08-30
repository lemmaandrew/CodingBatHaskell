{-From https://codingbat.com/prob/p144535
Given 2 int values, return true if either of them is in the range 10..20 inclusive.
-}
import Test.Hspec


in1020 :: Int -> Int -> Boolean
in1020 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ in1020 12 99 `shouldBe` true
   it "true" $ in1020 21 12 `shouldBe` true
   it "false" $ in1020 8 99 `shouldBe` false

