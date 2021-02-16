{- From https://codingbat.com/prob/p101409
Given a non-negative int n, return the count of the occurrences of 7 as a digit, 
so for example 717 yields 2. (no loops). Note that mod (%) by 10 yields the rightmost 
digit (126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (126 / 10 is 
12).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


count7 :: Int -> Int
count7 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        count7 717 `shouldBe` 2
    it "1" $
        count7 7 `shouldBe` 1
    it "0" $
        count7 123 `shouldBe` 0
    it "2" $
        count7 77 `shouldBe` 2
    it "1" $
        count7 7123 `shouldBe` 1
    it "3" $
        count7 771237 `shouldBe` 3
    it "4" $
        count7 771737 `shouldBe` 4
    it "2" $
        count7 47571 `shouldBe` 2
    it "6" $
        count7 777777 `shouldBe` 6
    it "4" $
        count7 70701277 `shouldBe` 4
    it "5" $
        count7 777576197 `shouldBe` 5
    it "0" $
        count7 99999 `shouldBe` 0
    it "1" $
        count7 99799 `shouldBe` 1
