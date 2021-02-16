{- From https://codingbat.com/prob/p148972
Given 3 int values, a b c, return their sum. However, if one of the values is the 
same as another of the values, it does not count towards the sum.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


loneSum :: Int -> Int -> Int -> Int
loneSum a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        loneSum 1 2 3 `shouldBe` 6
    it "2" $
        loneSum 3 2 3 `shouldBe` 2
    it "0" $
        loneSum 3 3 3 `shouldBe` 0
    it "9" $
        loneSum 9 2 2 `shouldBe` 9
    it "9" $
        loneSum 2 2 9 `shouldBe` 9
    it "9" $
        loneSum 2 9 2 `shouldBe` 9
    it "14" $
        loneSum 2 9 3 `shouldBe` 14
    it "9" $
        loneSum 4 2 3 `shouldBe` 9
    it "3" $
        loneSum 1 3 1 `shouldBe` 3
