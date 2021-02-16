{- From https://codingbat.com/prob/p137742
The number 6 is a truly great number. Given two int values, a and b, return true 
if either one is 6. Or if their sum or difference is 6. Note: the function Math.abs(num) 
computes the absolute value of a number.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


love6 :: Int -> Int -> Bool
love6 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        love6 6 4 `shouldBe` True
    it "False" $
        love6 4 5 `shouldBe` False
    it "True" $
        love6 1 5 `shouldBe` True
    it "True" $
        love6 1 6 `shouldBe` True
    it "False" $
        love6 1 8 `shouldBe` False
    it "True" $
        love6 1 7 `shouldBe` True
    it "False" $
        love6 7 5 `shouldBe` False
    it "True" $
        love6 8 2 `shouldBe` True
    it "True" $
        love6 6 6 `shouldBe` True
    it "False" $
        love6 (-6) 2 `shouldBe` False
    it "True" $
        love6 (-4) (-10) `shouldBe` True
    it "False" $
        love6 (-7) 1 `shouldBe` False
    it "True" $
        love6 7 (-1) `shouldBe` True
    it "True" $
        love6 (-6) 12 `shouldBe` True
    it "False" $
        love6 (-2) (-4) `shouldBe` False
    it "True" $
        love6 7 1 `shouldBe` True
    it "False" $
        love6 0 9 `shouldBe` False
    it "False" $
        love6 8 3 `shouldBe` False
    it "True" $
        love6 3 3 `shouldBe` True
    it "False" $
        love6 3 4 `shouldBe` False
