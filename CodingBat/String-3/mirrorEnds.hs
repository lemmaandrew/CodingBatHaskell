{- From https://codingbat.com/prob/p139411
Given a string, look for a mirror image (backwards) string at both the beginning 
and end of the given string. In other words, zero or more characters at the very begining 
of the given string, and at the very end of the string in reverse order (possibly overlapping). 
For example, the string \"abXYZba\" has the mirror end \"ab\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


mirrorEnds :: String -> String
mirrorEnds string = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ab\"" $
        mirrorEnds "abXYZba" `shouldBe` "ab"
    it "\"a\"" $
        mirrorEnds "abca" `shouldBe` "a"
    it "\"aba\"" $
        mirrorEnds "aba" `shouldBe` "aba"
    it "\"\"" $
        mirrorEnds "abab" `shouldBe` ""
    it "\"xxx\"" $
        mirrorEnds "xxx" `shouldBe` "xxx"
    it "\"xxYxx\"" $
        mirrorEnds "xxYxx" `shouldBe` "xxYxx"
    it "\"Hi \"" $
        mirrorEnds "Hi and iH" `shouldBe` "Hi "
    it "\"x\"" $
        mirrorEnds "x" `shouldBe` "x"
    it "\"\"" $
        mirrorEnds "" `shouldBe` ""
    it "\"123\"" $
        mirrorEnds "123and then 321" `shouldBe` "123"
    it "\"ba\"" $
        mirrorEnds "band andab" `shouldBe` "ba"
