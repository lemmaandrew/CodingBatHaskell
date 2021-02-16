{- From https://codingbat.com/prob/p116624
Given an int n, return the absolute difference between n and 21, except return double 
the absolute difference if n is over 21.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


diff21 :: Int -> Int
diff21 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        diff21 19 `shouldBe` 2
    it "11" $
        diff21 10 `shouldBe` 11
    it "0" $
        diff21 21 `shouldBe` 0
    it "2" $
        diff21 22 `shouldBe` 2
    it "8" $
        diff21 25 `shouldBe` 8
    it "18" $
        diff21 30 `shouldBe` 18
    it "21" $
        diff21 0 `shouldBe` 21
    it "20" $
        diff21 1 `shouldBe` 20
    it "19" $
        diff21 2 `shouldBe` 19
    it "22" $
        diff21 (-1) `shouldBe` 22
    it "23" $
        diff21 (-2) `shouldBe` 23
    it "58" $
        diff21 50 `shouldBe` 58
