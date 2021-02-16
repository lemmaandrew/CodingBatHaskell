{- From https://codingbat.com/prob/p158888
Given base and n that are both 1 or more, compute recursively (no loops) the value 
of base to the n power, so powerN(3, 2) is 9 (3 squared).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


powerN :: Int -> Int -> Int
powerN base n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        powerN 3 1 `shouldBe` 3
    it "9" $
        powerN 3 2 `shouldBe` 9
    it "27" $
        powerN 3 3 `shouldBe` 27
    it "2" $
        powerN 2 1 `shouldBe` 2
    it "4" $
        powerN 2 2 `shouldBe` 4
    it "8" $
        powerN 2 3 `shouldBe` 8
    it "16" $
        powerN 2 4 `shouldBe` 16
    it "32" $
        powerN 2 5 `shouldBe` 32
    it "10" $
        powerN 10 1 `shouldBe` 10
    it "100" $
        powerN 10 2 `shouldBe` 100
    it "1000" $
        powerN 10 3 `shouldBe` 1000
