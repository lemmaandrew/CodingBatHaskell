{- From https://codingbat.com/prob/p101887
Given three int values, a b c, return the largest.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


intMax :: Int -> Int -> Int -> Int
intMax a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        intMax 1 2 3 `shouldBe` 3
    it "3" $
        intMax 1 3 2 `shouldBe` 3
    it "3" $
        intMax 3 2 1 `shouldBe` 3
    it "9" $
        intMax 9 3 3 `shouldBe` 9
    it "9" $
        intMax 3 9 3 `shouldBe` 9
    it "9" $
        intMax 3 3 9 `shouldBe` 9
    it "8" $
        intMax 8 2 3 `shouldBe` 8
    it "(-1)" $
        intMax (-3) (-1) (-2) `shouldBe` (-1)
    it "6" $
        intMax 6 2 5 `shouldBe` 6
    it "6" $
        intMax 5 6 2 `shouldBe` 6
    it "6" $
        intMax 5 2 6 `shouldBe` 6
