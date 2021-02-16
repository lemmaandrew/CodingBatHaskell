{- From https://codingbat.com/prob/p112564
Return true if the given non-negative number is a multiple of 3 or a multiple of 
5. Use the % \"mod\" operator -- see Introduction to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


or35 :: Int -> Bool
or35 n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        or35 3 `shouldBe` True
    it "True" $
        or35 10 `shouldBe` True
    it "False" $
        or35 8 `shouldBe` False
    it "True" $
        or35 15 `shouldBe` True
    it "True" $
        or35 5 `shouldBe` True
    it "True" $
        or35 9 `shouldBe` True
    it "False" $
        or35 4 `shouldBe` False
    it "False" $
        or35 7 `shouldBe` False
    it "True" $
        or35 6 `shouldBe` True
    it "False" $
        or35 17 `shouldBe` False
    it "True" $
        or35 18 `shouldBe` True
    it "False" $
        or35 29 `shouldBe` False
    it "True" $
        or35 20 `shouldBe` True
    it "True" $
        or35 21 `shouldBe` True
    it "False" $
        or35 22 `shouldBe` False
    it "True" $
        or35 45 `shouldBe` True
    it "True" $
        or35 99 `shouldBe` True
    it "True" $
        or35 100 `shouldBe` True
    it "False" $
        or35 101 `shouldBe` False
    it "False" $
        or35 121 `shouldBe` False
    it "False" $
        or35 122 `shouldBe` False
    it "True" $
        or35 123 `shouldBe` True
