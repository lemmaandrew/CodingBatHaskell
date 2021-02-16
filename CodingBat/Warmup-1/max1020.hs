{- From https://codingbat.com/prob/p177372
Given 2 positive int values, return the larger value that is in the range 10..20 
inclusive, or return 0 if neither is in that range.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


max1020 :: Int -> Int -> Int
max1020 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "19" $
        max1020 11 19 `shouldBe` 19
    it "19" $
        max1020 19 11 `shouldBe` 19
    it "11" $
        max1020 11 9 `shouldBe` 11
    it "0" $
        max1020 9 21 `shouldBe` 0
    it "10" $
        max1020 10 21 `shouldBe` 10
    it "10" $
        max1020 21 10 `shouldBe` 10
    it "11" $
        max1020 9 11 `shouldBe` 11
    it "10" $
        max1020 23 10 `shouldBe` 10
    it "20" $
        max1020 20 10 `shouldBe` 20
    it "20" $
        max1020 7 20 `shouldBe` 20
    it "17" $
        max1020 17 16 `shouldBe` 17
