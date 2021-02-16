{- From https://codingbat.com/prob/p192082
Given two temperatures, return true if one is less than 0 and the other is greater 
than 100.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


icyHot :: Int -> Int -> Bool
icyHot temp1 temp2 = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        icyHot 120 (-1) `shouldBe` True
    it "True" $
        icyHot (-1) 120 `shouldBe` True
    it "False" $
        icyHot 2 120 `shouldBe` False
    it "False" $
        icyHot (-1) 100 `shouldBe` False
    it "False" $
        icyHot (-2) (-2) `shouldBe` False
    it "False" $
        icyHot 120 120 `shouldBe` False
