{- From https://codingbat.com/prob/p184004
Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) 
computes the absolute value of a number.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


nearHundred :: Int -> Bool
nearHundred n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        nearHundred 93 `shouldBe` True
    it "True" $
        nearHundred 90 `shouldBe` True
    it "False" $
        nearHundred 89 `shouldBe` False
    it "True" $
        nearHundred 110 `shouldBe` True
    it "False" $
        nearHundred 111 `shouldBe` False
    it "False" $
        nearHundred 121 `shouldBe` False
    it "False" $
        nearHundred (-101) `shouldBe` False
    it "False" $
        nearHundred (-209) `shouldBe` False
    it "True" $
        nearHundred 190 `shouldBe` True
    it "True" $
        nearHundred 209 `shouldBe` True
    it "False" $
        nearHundred 0 `shouldBe` False
    it "False" $
        nearHundred 5 `shouldBe` False
    it "False" $
        nearHundred (-50) `shouldBe` False
    it "True" $
        nearHundred 191 `shouldBe` True
    it "False" $
        nearHundred 189 `shouldBe` False
    it "True" $
        nearHundred 200 `shouldBe` True
    it "True" $
        nearHundred 210 `shouldBe` True
    it "False" $
        nearHundred 211 `shouldBe` False
    it "False" $
        nearHundred 290 `shouldBe` False
