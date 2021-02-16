{- From https://codingbat.com/prob/p117019
Given 2 int values greater than 0, return whichever value is nearest to 21 without 
going over. Return 0 if they both go over.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


blackjack :: Int -> Int -> Int
blackjack a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "21" $
        blackjack 19 21 `shouldBe` 21
    it "21" $
        blackjack 21 19 `shouldBe` 21
    it "19" $
        blackjack 19 22 `shouldBe` 19
    it "19" $
        blackjack 22 19 `shouldBe` 19
    it "0" $
        blackjack 22 50 `shouldBe` 0
    it "0" $
        blackjack 22 22 `shouldBe` 0
    it "1" $
        blackjack 33 1 `shouldBe` 1
    it "2" $
        blackjack 1 2 `shouldBe` 2
    it "0" $
        blackjack 34 33 `shouldBe` 0
    it "19" $
        blackjack 17 19 `shouldBe` 19
    it "18" $
        blackjack 18 17 `shouldBe` 18
    it "16" $
        blackjack 16 23 `shouldBe` 16
    it "4" $
        blackjack 3 4 `shouldBe` 4
    it "3" $
        blackjack 3 2 `shouldBe` 3
    it "21" $
        blackjack 21 20 `shouldBe` 21
