{-From https://codingbat.com/prob/p137365
Given a number n, return true if n is in the range 1..10, inclusive. Unless outsideMode
is true, in which case return true if the number is less or equal to 1, or greater
or equal to 10.
-}
import Test.Hspec


in1To10 :: Int -> Boolean -> Boolean
in1To10 n outsideMode = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ in1To10 5 false `shouldBe` true
   it "false" $ in1To10 11 false `shouldBe` false
   it "true" $ in1To10 11 true `shouldBe` true

