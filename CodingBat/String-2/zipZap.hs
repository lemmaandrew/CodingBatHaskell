{- From https://codingbat.com/prob/p180759
Look for patterns like \"zip\" and \"zap\" in the string -- length-3, starting with 
'z' and ending with 'p'. Return a string where for all such words, the middle letter 
is gone, so \"zipXzap\" yields \"zpXzp\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


zipZap :: String -> String
zipZap str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"zpXzp\"" $
        zipZap "zipXzap" `shouldBe` "zpXzp"
    it "\"zpzp\"" $
        zipZap "zopzop" `shouldBe` "zpzp"
    it "\"zzzpzp\"" $
        zipZap "zzzopzop" `shouldBe` "zzzpzp"
    it "\"zibzp\"" $
        zipZap "zibzap" `shouldBe` "zibzp"
    it "\"zp\"" $
        zipZap "zip" `shouldBe` "zp"
    it "\"zi\"" $
        zipZap "zi" `shouldBe` "zi"
    it "\"z\"" $
        zipZap "z" `shouldBe` "z"
    it "\"\"" $
        zipZap "" `shouldBe` ""
    it "\"zp\"" $
        zipZap "zzp" `shouldBe` "zp"
    it "\"abcppp\"" $
        zipZap "abcppp" `shouldBe` "abcppp"
    it "\"azbcppp\"" $
        zipZap "azbcppp" `shouldBe` "azbcppp"
    it "\"azbcpzp\"" $
        zipZap "azbcpzpp" `shouldBe` "azbcpzp"
