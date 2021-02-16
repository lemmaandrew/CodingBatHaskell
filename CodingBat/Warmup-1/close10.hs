{- From https://codingbat.com/prob/p172021
Given 2 int values, return whichever value is nearest to the value 10, or return 
0 in the event of a tie. Note that Math.abs(n) returns the absolute value of a number.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


close10 :: Int -> Int -> Int
close10 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "8" $
        close10 8 13 `shouldBe` 8
    it "8" $
        close10 13 8 `shouldBe` 8
    it "0" $
        close10 13 7 `shouldBe` 0
    it "0" $
        close10 7 13 `shouldBe` 0
    it "9" $
        close10 9 13 `shouldBe` 9
    it "8" $
        close10 13 8 `shouldBe` 8
    it "10" $
        close10 10 12 `shouldBe` 10
    it "10" $
        close10 11 10 `shouldBe` 10
    it "5" $
        close10 5 21 `shouldBe` 5
    it "0" $
        close10 0 20 `shouldBe` 0
    it "0" $
        close10 10 10 `shouldBe` 0
