{- From https://codingbat.com/prob/p126212
Suppose the string \"yak\" is unlucky. Given a string, return a version where all 
the \"yak\" are removed, but the \"a\" can be any char. The \"yak\" strings will not 
overlap.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringYak :: String -> String
stringYak str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"pak\"" $
        stringYak "yakpak" `shouldBe` "pak"
    it "\"pak\"" $
        stringYak "pakyak" `shouldBe` "pak"
    it "\"123ya\"" $
        stringYak "yak123ya" `shouldBe` "123ya"
    it "\"\"" $
        stringYak "yak" `shouldBe` ""
    it "\"xxx\"" $
        stringYak "yakxxxyak" `shouldBe` "xxx"
    it "\"HiHi\"" $
        stringYak "HiyakHi" `shouldBe` "HiHi"
    it "\"xxxyyzzz\"" $
        stringYak "xxxyakyyyakzzz" `shouldBe` "xxxyyzzz"
