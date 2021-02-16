{- From https://codingbat.com/prob/p134250
We'll say that a String is xy-balanced if for all the 'x' chars in the string, there 
exists a 'y' char somewhere later in the string. So \"xxy\" is balanced, but \"xyx\" is 
not. One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


xyBalance :: String -> Bool
xyBalance str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        xyBalance "aaxbby" `shouldBe` True
    it "False" $
        xyBalance "aaxbb" `shouldBe` False
    it "False" $
        xyBalance "yaaxbb" `shouldBe` False
    it "True" $
        xyBalance "yaaxbby" `shouldBe` True
    it "True" $
        xyBalance "xaxxbby" `shouldBe` True
    it "False" $
        xyBalance "xaxxbbyx" `shouldBe` False
    it "True" $
        xyBalance "xxbxy" `shouldBe` True
    it "False" $
        xyBalance "xxbx" `shouldBe` False
    it "True" $
        xyBalance "bbb" `shouldBe` True
    it "False" $
        xyBalance "bxbb" `shouldBe` False
    it "True" $
        xyBalance "bxyb" `shouldBe` True
    it "True" $
        xyBalance "xy" `shouldBe` True
    it "True" $
        xyBalance "y" `shouldBe` True
    it "False" $
        xyBalance "x" `shouldBe` False
    it "True" $
        xyBalance "" `shouldBe` True
    it "False" $
        xyBalance "yxyxyxyx" `shouldBe` False
    it "True" $
        xyBalance "yxyxyxyxy" `shouldBe` True
    it "True" $
        xyBalance "12xabxxydxyxyzz" `shouldBe` True
