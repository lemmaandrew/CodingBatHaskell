{- From https://codingbat.com/prob/p144535
Given 2 int values, return true if either of them is in the range 10..20 inclusive.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


in1020 :: Int -> Int -> Bool
in1020 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        in1020 12 99 `shouldBe` True
    it "True" $
        in1020 21 12 `shouldBe` True
    it "False" $
        in1020 8 99 `shouldBe` False
    it "True" $
        in1020 99 10 `shouldBe` True
    it "True" $
        in1020 20 20 `shouldBe` True
    it "False" $
        in1020 21 21 `shouldBe` False
    it "False" $
        in1020 9 9 `shouldBe` False
