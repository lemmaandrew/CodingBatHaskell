{- From https://codingbat.com/prob/p169213
Given three ints, a b c, return true if two or more of them have the same rightmost 
digit. The ints are non-negative. Note: the % \"mod\" operator computes the remainder, 
e.g. 17 % 10 is 7.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


lastDigit :: Int -> Int -> Int -> Bool
lastDigit a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        lastDigit 23 19 13 `shouldBe` True
    it "False" $
        lastDigit 23 19 12 `shouldBe` False
    it "True" $
        lastDigit 23 19 3 `shouldBe` True
    it "True" $
        lastDigit 23 19 39 `shouldBe` True
    it "False" $
        lastDigit 1 2 3 `shouldBe` False
    it "True" $
        lastDigit 1 1 2 `shouldBe` True
    it "True" $
        lastDigit 1 2 2 `shouldBe` True
    it "False" $
        lastDigit 14 25 43 `shouldBe` False
    it "True" $
        lastDigit 14 25 45 `shouldBe` True
    it "False" $
        lastDigit 248 106 1002 `shouldBe` False
    it "True" $
        lastDigit 248 106 1008 `shouldBe` True
    it "True" $
        lastDigit 10 11 20 `shouldBe` True
    it "True" $
        lastDigit 0 11 0 `shouldBe` True
