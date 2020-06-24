{-From https://codingbat.com/prob/p137365
Given a number n, return true if n is in the range 1..10, inclusive. Unless outsideMode
is true, in which case return true if the number is less or equal to 1, or greater
or equal to 10.
-}
import Test.Hspec


in1To10 :: Int -> Bool -> Bool
in1To10 n outsideMode = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ in1To10 5 False `shouldBe` True
   it "False" $ in1To10 11 False `shouldBe` False
   it "True" $ in1To10 11 True `shouldBe` True

