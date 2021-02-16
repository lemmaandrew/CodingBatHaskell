{- From https://codingbat.com/prob/p118077
Given 2 non-negative ints, a and b, return their sum, so long as the sum has the 
same number of digits as a. If the sum has more digits than a, just return a without 
b. (Note: one way to compute the number of digits of a non-negative int n is to convert 
it to a string with String.valueOf(n) and then check the length of the string.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumLimit :: Int -> Int -> Int
sumLimit a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "5" $
        sumLimit 2 3 `shouldBe` 5
    it "8" $
        sumLimit 8 3 `shouldBe` 8
    it "9" $
        sumLimit 8 1 `shouldBe` 9
    it "50" $
        sumLimit 11 39 `shouldBe` 50
    it "11" $
        sumLimit 11 99 `shouldBe` 11
    it "0" $
        sumLimit 0 0 `shouldBe` 0
    it "99" $
        sumLimit 99 0 `shouldBe` 99
    it "99" $
        sumLimit 99 1 `shouldBe` 99
    it "124" $
        sumLimit 123 1 `shouldBe` 124
    it "1" $
        sumLimit 1 123 `shouldBe` 1
    it "83" $
        sumLimit 23 60 `shouldBe` 83
    it "23" $
        sumLimit 23 80 `shouldBe` 23
    it "9001" $
        sumLimit 9000 1 `shouldBe` 9001
    it "90000001" $
        sumLimit 90000000 1 `shouldBe` 90000001
    it "9000" $
        sumLimit 9000 1000 `shouldBe` 9000
