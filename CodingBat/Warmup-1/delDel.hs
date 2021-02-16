{- From https://codingbat.com/prob/p100905
Given a string, if the string \"del\" appears starting at index 1, return a string 
where that \"del\" has been deleted. Otherwise, return the string unchanged.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


delDel :: String -> String
delDel str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"abc\"" $
        delDel "adelbc" `shouldBe` "abc"
    it "\"aHello\"" $
        delDel "adelHello" `shouldBe` "aHello"
    it "\"adedbc\"" $
        delDel "adedbc" `shouldBe` "adedbc"
    it "\"abcdel\"" $
        delDel "abcdel" `shouldBe` "abcdel"
    it "\"add\"" $
        delDel "add" `shouldBe` "add"
    it "\"ad\"" $
        delDel "ad" `shouldBe` "ad"
    it "\"a\"" $
        delDel "a" `shouldBe` "a"
    it "\"\"" $
        delDel "" `shouldBe` ""
    it "\"del\"" $
        delDel "del" `shouldBe` "del"
    it "\"a\"" $
        delDel "adel" `shouldBe` "a"
    it "\"aadelbb\"" $
        delDel "aadelbb" `shouldBe` "aadelbb"
