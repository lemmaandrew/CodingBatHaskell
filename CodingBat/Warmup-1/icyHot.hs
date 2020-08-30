{-From https://codingbat.com/prob/p192082
Given two temperatures, return true if one is less than 0 and the other is greater than
100.
-}
import Test.Hspec


icyHot :: Int -> Int -> Boolean
icyHot temp1 temp2 = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ icyHot 120 (-1) `shouldBe` true
   it "true" $ icyHot (-1) 120 `shouldBe` true
   it "false" $ icyHot 2 120 `shouldBe` false

