{- From https://codingbat.com/prob/p118230
Given a string, compute recursively a new string where all the 'x' chars have been 
removed.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noX :: String -> String
noX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ab\"" $
        noX "xaxb" `shouldBe` "ab"
    it "\"abc\"" $
        noX "abc" `shouldBe` "abc"
    it "\"\"" $
        noX "xx" `shouldBe` ""
    it "\"\"" $
        noX "" `shouldBe` ""
    it "\"ab\"" $
        noX "axxbxx" `shouldBe` "ab"
    it "\"Hello\"" $
        noX "Hellox" `shouldBe` "Hello"
