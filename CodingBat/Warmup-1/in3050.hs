{- From https://codingbat.com/prob/p132134
Given 2 int values, return true if they are both in the range 30..40 inclusive, or 
they are both in the range 40..50 inclusive.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


in3050 :: Int -> Int -> Bool
in3050 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        in3050 30 31 `shouldBe` True
    it "False" $
        in3050 30 41 `shouldBe` False
    it "True" $
        in3050 40 50 `shouldBe` True
    it "False" $
        in3050 40 51 `shouldBe` False
    it "False" $
        in3050 39 50 `shouldBe` False
    it "False" $
        in3050 50 39 `shouldBe` False
    it "True" $
        in3050 40 39 `shouldBe` True
    it "True" $
        in3050 49 48 `shouldBe` True
    it "True" $
        in3050 50 40 `shouldBe` True
    it "False" $
        in3050 50 51 `shouldBe` False
    it "True" $
        in3050 35 36 `shouldBe` True
    it "False" $
        in3050 35 45 `shouldBe` False
