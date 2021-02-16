{- From https://codingbat.com/prob/p133158
Return true if the given non-negative number is 1 or 2 less than a multiple of 20. 
So for example 38 and 39 return true, but 40 returns false. See also: Introduction 
to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


less20 :: Int -> Bool
less20 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        less20 18 `shouldBe` True
    it "True" $
        less20 19 `shouldBe` True
    it "False" $
        less20 20 `shouldBe` False
    it "False" $
        less20 8 `shouldBe` False
    it "False" $
        less20 17 `shouldBe` False
    it "False" $
        less20 23 `shouldBe` False
    it "False" $
        less20 25 `shouldBe` False
    it "False" $
        less20 30 `shouldBe` False
    it "False" $
        less20 31 `shouldBe` False
    it "True" $
        less20 58 `shouldBe` True
    it "True" $
        less20 59 `shouldBe` True
    it "False" $
        less20 60 `shouldBe` False
    it "False" $
        less20 61 `shouldBe` False
    it "False" $
        less20 62 `shouldBe` False
    it "False" $
        less20 1017 `shouldBe` False
    it "True" $
        less20 1018 `shouldBe` True
    it "True" $
        less20 1019 `shouldBe` True
    it "False" $
        less20 1020 `shouldBe` False
    it "False" $
        less20 1021 `shouldBe` False
    it "False" $
        less20 1022 `shouldBe` False
    it "False" $
        less20 1023 `shouldBe` False
    it "False" $
        less20 37 `shouldBe` False
