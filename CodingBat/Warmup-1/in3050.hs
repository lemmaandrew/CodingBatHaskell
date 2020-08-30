{-From https://codingbat.com/prob/p132134
Given 2 int values, return true if they are both in the range 30..40 inclusive, or they
are both in the range 40..50 inclusive.
-}
import Test.Hspec


in3050 :: Int -> Int -> Boolean
in3050 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ in3050 30 31 `shouldBe` true
   it "false" $ in3050 30 41 `shouldBe` false
   it "true" $ in3050 40 50 `shouldBe` true

