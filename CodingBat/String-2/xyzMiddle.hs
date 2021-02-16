{- From https://codingbat.com/prob/p159772
Given a string, does \"xyz\" appear in the middle of the string? To define middle, 
we'll say that the number of chars to the left and right of the \"xyz\" must differ by 
at most one. This problem is harder than it looks.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


xyzMiddle :: String -> Bool
xyzMiddle str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        xyzMiddle "AAxyzBB" `shouldBe` True
    it "True" $
        xyzMiddle "AxyzBB" `shouldBe` True
    it "False" $
        xyzMiddle "AxyzBBB" `shouldBe` False
    it "False" $
        xyzMiddle "AxyzBBBB" `shouldBe` False
    it "False" $
        xyzMiddle "AAAxyzB" `shouldBe` False
    it "True" $
        xyzMiddle "AAAxyzBB" `shouldBe` True
    it "False" $
        xyzMiddle "AAAAxyzBB" `shouldBe` False
    it "False" $
        xyzMiddle "AAAAAxyzBBB" `shouldBe` False
    it "True" $
        xyzMiddle "1x345xyz12x4" `shouldBe` True
    it "True" $
        xyzMiddle "xyzAxyzBBB" `shouldBe` True
    it "True" $
        xyzMiddle "xyzAxyzBxyz" `shouldBe` True
    it "True" $
        xyzMiddle "xyzxyzAxyzBxyzxyz" `shouldBe` True
    it "True" $
        xyzMiddle "xyzxyzxyzBxyzxyz" `shouldBe` True
    it "True" $
        xyzMiddle "xyzxyzAxyzxyzxyz" `shouldBe` True
    it "False" $
        xyzMiddle "xyzxyzAxyzxyzxy" `shouldBe` False
    it "False" $
        xyzMiddle "AxyzxyzBB" `shouldBe` False
    it "False" $
        xyzMiddle "" `shouldBe` False
    it "False" $
        xyzMiddle "x" `shouldBe` False
    it "False" $
        xyzMiddle "xy" `shouldBe` False
    it "True" $
        xyzMiddle "xyz" `shouldBe` True
    it "True" $
        xyzMiddle "xyzz" `shouldBe` True
