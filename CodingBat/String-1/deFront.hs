{- From https://codingbat.com/prob/p110141
Given a string, return a version without the first 2 chars. Except keep the first 
char if it is 'a' and keep the second char if it is 'b'. The string may be any length. 
Harder than it looks.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


deFront :: String -> String
deFront str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"llo\"" $
        deFront "Hello" `shouldBe` "llo"
    it "\"va\"" $
        deFront "java" `shouldBe` "va"
    it "\"aay\"" $
        deFront "away" `shouldBe` "aay"
    it "\"ay\"" $
        deFront "axy" `shouldBe` "ay"
    it "\"abc\"" $
        deFront "abc" `shouldBe` "abc"
    it "\"by\"" $
        deFront "xby" `shouldBe` "by"
    it "\"ab\"" $
        deFront "ab" `shouldBe` "ab"
    it "\"a\"" $
        deFront "ax" `shouldBe` "a"
    it "\"ab\"" $
        deFront "axb" `shouldBe` "ab"
    it "\"aa\"" $
        deFront "aaa" `shouldBe` "aa"
    it "\"bc\"" $
        deFront "xbc" `shouldBe` "bc"
    it "\"bb\"" $
        deFront "bbb" `shouldBe` "bb"
    it "\"zz\"" $
        deFront "bazz" `shouldBe` "zz"
    it "\"\"" $
        deFront "ba" `shouldBe` ""
    it "\"abxyz\"" $
        deFront "abxyz" `shouldBe` "abxyz"
    it "\"\"" $
        deFront "hi" `shouldBe` ""
    it "\"s\"" $
        deFront "his" `shouldBe` "s"
    it "\"\"" $
        deFront "xz" `shouldBe` ""
    it "\"z\"" $
        deFront "zzz" `shouldBe` "z"
