{- From https://codingbat.com/prob/p118290
Return true if the given non-negative number is 1 or 2 more than a multiple of 20. 
See also: Introduction to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


more20 :: Int -> Bool
more20 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "False" $
        more20 20 `shouldBe` False
    it "True" $
        more20 21 `shouldBe` True
    it "True" $
        more20 22 `shouldBe` True
    it "False" $
        more20 23 `shouldBe` False
    it "False" $
        more20 25 `shouldBe` False
    it "False" $
        more20 30 `shouldBe` False
    it "False" $
        more20 31 `shouldBe` False
    it "False" $
        more20 59 `shouldBe` False
    it "False" $
        more20 60 `shouldBe` False
    it "True" $
        more20 61 `shouldBe` True
    it "True" $
        more20 62 `shouldBe` True
    it "False" $
        more20 1020 `shouldBe` False
    it "True" $
        more20 1021 `shouldBe` True
    it "False" $
        more20 1000 `shouldBe` False
    it "True" $
        more20 1001 `shouldBe` True
    it "False" $
        more20 50 `shouldBe` False
    it "False" $
        more20 55 `shouldBe` False
    it "False" $
        more20 40 `shouldBe` False
    it "True" $
        more20 41 `shouldBe` True
    it "False" $
        more20 39 `shouldBe` False
    it "True" $
        more20 42 `shouldBe` True
