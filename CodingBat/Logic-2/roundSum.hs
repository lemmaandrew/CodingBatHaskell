{- From https://codingbat.com/prob/p186753
For this problem, we'll round an int value up to the next multiple of 10 if its rightmost 
digit is 5 or more, so 15 rounds up to 20. Alternately, round down to the previous multiple 
of 10 if its rightmost digit is less than 5, so 12 rounds down to 10. Given 3 ints, 
a b c, return the sum of their rounded values. To avoid code repetition, write a separate 
helper \"public int round10(int num) {\" and call it 3 times. Write the helper entirely 
below and at the same indent level as roundSum().
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


roundSum :: Int -> Int -> Int -> Int
roundSum a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "60" $
        roundSum 16 17 18 `shouldBe` 60
    it "30" $
        roundSum 12 13 14 `shouldBe` 30
    it "10" $
        roundSum 6 4 4 `shouldBe` 10
    it "20" $
        roundSum 4 6 5 `shouldBe` 20
    it "10" $
        roundSum 4 4 6 `shouldBe` 10
    it "10" $
        roundSum 9 4 4 `shouldBe` 10
    it "0" $
        roundSum 0 0 1 `shouldBe` 0
    it "10" $
        roundSum 0 9 0 `shouldBe` 10
    it "40" $
        roundSum 10 10 19 `shouldBe` 40
    it "90" $
        roundSum 20 30 40 `shouldBe` 90
    it "100" $
        roundSum 45 21 30 `shouldBe` 100
    it "60" $
        roundSum 23 11 26 `shouldBe` 60
    it "70" $
        roundSum 23 24 25 `shouldBe` 70
    it "80" $
        roundSum 25 24 25 `shouldBe` 80
    it "70" $
        roundSum 23 24 29 `shouldBe` 70
    it "70" $
        roundSum 11 24 36 `shouldBe` 70
    it "90" $
        roundSum 24 36 32 `shouldBe` 90
    it "50" $
        roundSum 14 12 26 `shouldBe` 50
    it "40" $
        roundSum 12 10 24 `shouldBe` 40
