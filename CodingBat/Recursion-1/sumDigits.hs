{- From https://codingbat.com/prob/p163932
Given a non-negative int n, return the sum of its digits recursively (no loops). 
Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) 
by 10 removes the rightmost digit (126 / 10 is 12).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumDigits :: Int -> Int
sumDigits n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "9" $
        sumDigits 126 `shouldBe` 9
    it "13" $
        sumDigits 49 `shouldBe` 13
    it "3" $
        sumDigits 12 `shouldBe` 3
    it "1" $
        sumDigits 10 `shouldBe` 1
    it "1" $
        sumDigits 1 `shouldBe` 1
    it "0" $
        sumDigits 0 `shouldBe` 0
    it "10" $
        sumDigits 730 `shouldBe` 10
    it "4" $
        sumDigits 1111 `shouldBe` 4
    it "5" $
        sumDigits 11111 `shouldBe` 5
    it "3" $
        sumDigits 10110 `shouldBe` 3
    it "10" $
        sumDigits 235 `shouldBe` 10
