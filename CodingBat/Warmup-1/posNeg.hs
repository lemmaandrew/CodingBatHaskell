{- From https://codingbat.com/prob/p159227
Given 2 int values, return true if one is negative and one is positive. Except if 
the parameter \"negative\" is true, then return true only if both are negative.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


posNeg :: Int -> Int -> Bool -> Bool
posNeg a b negative = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        posNeg 1 (-1) False `shouldBe` True
    it "True" $
        posNeg (-1) 1 False `shouldBe` True
    it "True" $
        posNeg (-4) (-5) True `shouldBe` True
    it "False" $
        posNeg (-4) (-5) False `shouldBe` False
    it "True" $
        posNeg (-4) 5 False `shouldBe` True
    it "False" $
        posNeg (-4) 5 True `shouldBe` False
    it "False" $
        posNeg 1 1 False `shouldBe` False
    it "False" $
        posNeg (-1) (-1) False `shouldBe` False
    it "False" $
        posNeg 1 (-1) True `shouldBe` False
    it "False" $
        posNeg (-1) 1 True `shouldBe` False
    it "False" $
        posNeg 1 1 True `shouldBe` False
    it "True" $
        posNeg (-1) (-1) True `shouldBe` True
    it "True" $
        posNeg 5 (-5) False `shouldBe` True
    it "True" $
        posNeg (-6) 6 False `shouldBe` True
    it "False" $
        posNeg (-5) (-6) False `shouldBe` False
    it "False" $
        posNeg (-2) (-1) False `shouldBe` False
    it "False" $
        posNeg 1 2 False `shouldBe` False
    it "False" $
        posNeg (-5) 6 True `shouldBe` False
    it "True" $
        posNeg (-5) (-5) True `shouldBe` True
