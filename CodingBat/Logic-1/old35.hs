{- From https://codingbat.com/prob/p159612
Return true if the given non-negative number is a multiple of 3 or 5, but not both. 
Use the % \"mod\" operator -- see Introduction to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


old35 :: Int -> Bool
old35 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        old35 3 `shouldBe` True
    it "True" $
        old35 10 `shouldBe` True
    it "False" $
        old35 15 `shouldBe` False
    it "True" $
        old35 5 `shouldBe` True
    it "True" $
        old35 9 `shouldBe` True
    it "False" $
        old35 8 `shouldBe` False
    it "False" $
        old35 7 `shouldBe` False
    it "True" $
        old35 6 `shouldBe` True
    it "False" $
        old35 17 `shouldBe` False
    it "True" $
        old35 18 `shouldBe` True
    it "False" $
        old35 29 `shouldBe` False
    it "True" $
        old35 20 `shouldBe` True
    it "True" $
        old35 21 `shouldBe` True
    it "False" $
        old35 22 `shouldBe` False
    it "False" $
        old35 45 `shouldBe` False
    it "True" $
        old35 99 `shouldBe` True
