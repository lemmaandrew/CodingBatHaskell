{- From https://codingbat.com/prob/p192383
Given a non-negative int n, compute recursively (no loops) the count of the occurrences 
of 8 as a digit, except that an 8 with another 8 immediately to its left counts double, 
so 8818 yields 4. Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), 
while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


count8 :: Int -> Int
count8 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        count8 8 `shouldBe` 1
    it "2" $
        count8 818 `shouldBe` 2
    it "4" $
        count8 8818 `shouldBe` 4
    it "4" $
        count8 8088 `shouldBe` 4
    it "0" $
        count8 123 `shouldBe` 0
    it "2" $
        count8 81238 `shouldBe` 2
    it "6" $
        count8 88788 `shouldBe` 6
    it "1" $
        count8 8234 `shouldBe` 1
    it "1" $
        count8 2348 `shouldBe` 1
    it "3" $
        count8 23884 `shouldBe` 3
    it "0" $
        count8 0 `shouldBe` 0
    it "5" $
        count8 1818188 `shouldBe` 5
    it "5" $
        count8 8818181 `shouldBe` 5
    it "1" $
        count8 1080 `shouldBe` 1
    it "3" $
        count8 188 `shouldBe` 3
    it "9" $
        count8 88888 `shouldBe` 9
    it "2" $
        count8 9898 `shouldBe` 2
    it "1" $
        count8 78 `shouldBe` 1
