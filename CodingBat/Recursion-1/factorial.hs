{- From https://codingbat.com/prob/p154669
Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1. 
Compute the result recursively (without loops).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


factorial :: Int -> Int
factorial n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        factorial 1 `shouldBe` 1
    it "2" $
        factorial 2 `shouldBe` 2
    it "6" $
        factorial 3 `shouldBe` 6
    it "24" $
        factorial 4 `shouldBe` 24
    it "120" $
        factorial 5 `shouldBe` 120
    it "720" $
        factorial 6 `shouldBe` 720
    it "5040" $
        factorial 7 `shouldBe` 5040
    it "40320" $
        factorial 8 `shouldBe` 40320
    it "479001600" $
        factorial 12 `shouldBe` 479001600
