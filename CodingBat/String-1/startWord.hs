{- From https://codingbat.com/prob/p141494
Given a string and a second \"word\" string, we'll say that the word matches the 
string if it appears at the front of the string, except its first char does not need to 
match exactly. On a match, return the front of the string, or otherwise return the empty 
string. So, so with the string \"hippo\" the word \"hi\" returns \"hi\" and \"xip\" returns 
\"hip\". The word will be at least length 1.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


startWord :: String -> String -> String
startWord str word = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"hi\"" $
        startWord "hippo" "hi" `shouldBe` "hi"
    it "\"hip\"" $
        startWord "hippo" "xip" `shouldBe` "hip"
    it "\"h\"" $
        startWord "hippo" "i" `shouldBe` "h"
    it "\"\"" $
        startWord "hippo" "ix" `shouldBe` ""
    it "\"\"" $
        startWord "h" "ix" `shouldBe` ""
    it "\"\"" $
        startWord "" "i" `shouldBe` ""
    it "\"hi\"" $
        startWord "hip" "zi" `shouldBe` "hi"
    it "\"hip\"" $
        startWord "hip" "zip" `shouldBe` "hip"
    it "\"\"" $
        startWord "hip" "zig" `shouldBe` ""
    it "\"h\"" $
        startWord "h" "z" `shouldBe` "h"
    it "\"hippo\"" $
        startWord "hippo" "xippo" `shouldBe` "hippo"
    it "\"\"" $
        startWord "hippo" "xyz" `shouldBe` ""
    it "\"hip\"" $
        startWord "hippo" "hip" `shouldBe` "hip"
    it "\"kit\"" $
        startWord "kitten" "cit" `shouldBe` "kit"
    it "\"kit\"" $
        startWord "kit" "cit" `shouldBe` "kit"
