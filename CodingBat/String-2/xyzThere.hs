{- From https://codingbat.com/prob/p136594
Return true if the given string contains an appearance of \"xyz\" where the xyz is 
not directly preceeded by a period (.). So \"xxyz\" counts but \"x.xyz\" does not.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


xyzThere :: String -> Bool
xyzThere str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        xyzThere "abcxyz" `shouldBe` True
    it "False" $
        xyzThere "abc.xyz" `shouldBe` False
    it "True" $
        xyzThere "xyz.abc" `shouldBe` True
    it "False" $
        xyzThere "abcxy" `shouldBe` False
    it "True" $
        xyzThere "xyz" `shouldBe` True
    it "False" $
        xyzThere "xy" `shouldBe` False
    it "False" $
        xyzThere "x" `shouldBe` False
    it "False" $
        xyzThere "" `shouldBe` False
    it "True" $
        xyzThere "abc.xyzxyz" `shouldBe` True
    it "True" $
        xyzThere "abc.xxyz" `shouldBe` True
    it "False" $
        xyzThere ".xyz" `shouldBe` False
    it "False" $
        xyzThere "12.xyz" `shouldBe` False
    it "True" $
        xyzThere "12xyz" `shouldBe` True
    it "False" $
        xyzThere "1.xyz.xyz2.xyz" `shouldBe` False
