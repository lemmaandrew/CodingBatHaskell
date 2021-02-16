{- From https://codingbat.com/prob/p182879
Given 3 int values, a b c, return their sum. However, if any of the values is a teen 
-- in the range 13..19 inclusive -- then that value counts as 0, except 15 and 16 do 
not count as a teens. Write a separate helper \"public int fixTeen(int n) {\"that takes 
in an int value and returns that value fixed for the teen rule. In this way, you avoid 
repeating the teen code 3 times (i.e. \"decomposition\"). Define the helper below and at the 
same indent level as the main noTeenSum().
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noTeenSum :: Int -> Int -> Int -> Int
noTeenSum a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        noTeenSum 1 2 3 `shouldBe` 6
    it "3" $
        noTeenSum 2 13 1 `shouldBe` 3
    it "3" $
        noTeenSum 2 1 14 `shouldBe` 3
    it "18" $
        noTeenSum 2 1 15 `shouldBe` 18
    it "19" $
        noTeenSum 2 1 16 `shouldBe` 19
    it "3" $
        noTeenSum 2 1 17 `shouldBe` 3
    it "3" $
        noTeenSum 17 1 2 `shouldBe` 3
    it "19" $
        noTeenSum 2 15 2 `shouldBe` 19
    it "16" $
        noTeenSum 16 17 18 `shouldBe` 16
    it "0" $
        noTeenSum 17 18 19 `shouldBe` 0
    it "32" $
        noTeenSum 15 16 1 `shouldBe` 32
    it "30" $
        noTeenSum 15 15 19 `shouldBe` 30
    it "31" $
        noTeenSum 15 19 16 `shouldBe` 31
    it "5" $
        noTeenSum 5 17 18 `shouldBe` 5
    it "16" $
        noTeenSum 17 18 16 `shouldBe` 16
    it "0" $
        noTeenSum 17 19 18 `shouldBe` 0
