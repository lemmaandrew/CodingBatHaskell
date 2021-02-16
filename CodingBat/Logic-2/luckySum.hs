{- From https://codingbat.com/prob/p130788
Given 3 int values, a b c, return their sum. However, if one of the values is 13 
then it does not count towards the sum and values to its right do not count. So for example, 
if b is 13, then both b and c do not count.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


luckySum :: Int -> Int -> Int -> Int
luckySum a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        luckySum 1 2 3 `shouldBe` 6
    it "3" $
        luckySum 1 2 13 `shouldBe` 3
    it "1" $
        luckySum 1 13 3 `shouldBe` 1
    it "1" $
        luckySum 1 13 13 `shouldBe` 1
    it "13" $
        luckySum 6 5 2 `shouldBe` 13
    it "0" $
        luckySum 13 2 3 `shouldBe` 0
    it "0" $
        luckySum 13 2 13 `shouldBe` 0
    it "0" $
        luckySum 13 13 2 `shouldBe` 0
    it "13" $
        luckySum 9 4 13 `shouldBe` 13
    it "8" $
        luckySum 8 13 2 `shouldBe` 8
    it "10" $
        luckySum 7 2 1 `shouldBe` 10
    it "6" $
        luckySum 3 3 13 `shouldBe` 6
