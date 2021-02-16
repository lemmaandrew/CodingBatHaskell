{- From https://codingbat.com/prob/p137365
Given a number n, return true if n is in the range 1..10, inclusive. Unless outsideMode 
is true, in which case return true if the number is less or equal to 1, or greater 
or equal to 10.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


in1To10 :: Int -> Bool -> Bool
in1To10 n outsideMode = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        in1To10 5 False `shouldBe` True
    it "False" $
        in1To10 11 False `shouldBe` False
    it "True" $
        in1To10 11 True `shouldBe` True
    it "True" $
        in1To10 10 False `shouldBe` True
    it "True" $
        in1To10 10 True `shouldBe` True
    it "True" $
        in1To10 9 False `shouldBe` True
    it "False" $
        in1To10 9 True `shouldBe` False
    it "True" $
        in1To10 1 False `shouldBe` True
    it "True" $
        in1To10 1 True `shouldBe` True
    it "False" $
        in1To10 0 False `shouldBe` False
    it "True" $
        in1To10 0 True `shouldBe` True
    it "False" $
        in1To10 (-1) False `shouldBe` False
    it "True" $
        in1To10 (-1) True `shouldBe` True
    it "False" $
        in1To10 99 False `shouldBe` False
    it "True" $
        in1To10 (-99) True `shouldBe` True
