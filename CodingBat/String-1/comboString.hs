{- From https://codingbat.com/prob/p168564
Given 2 strings, a and b, return a string of the form short+long+short, with the 
shorter string on the outside and the longer string on the inside. The strings will not 
be the same length, but they may be empty (length 0).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


comboString :: String -> String -> String
comboString a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"hiHellohi\"" $
        comboString "Hello" "hi" `shouldBe` "hiHellohi"
    it "\"hiHellohi\"" $
        comboString "hi" "Hello" `shouldBe` "hiHellohi"
    it "\"baaab\"" $
        comboString "aaa" "b" `shouldBe` "baaab"
    it "\"baaab\"" $
        comboString "b" "aaa" `shouldBe` "baaab"
    it "\"aaa\"" $
        comboString "aaa" "" `shouldBe` "aaa"
    it "\"bb\"" $
        comboString "" "bb" `shouldBe` "bb"
    it "\"aaa1234aaa\"" $
        comboString "aaa" "1234" `shouldBe` "aaa1234aaa"
    it "\"bbaaabb\"" $
        comboString "aaa" "bb" `shouldBe` "bbaaabb"
    it "\"abba\"" $
        comboString "a" "bb" `shouldBe` "abba"
    it "\"abba\"" $
        comboString "bb" "a" `shouldBe` "abba"
    it "\"abxyzab\"" $
        comboString "xyz" "ab" `shouldBe` "abxyzab"
