{- From https://codingbat.com/prob/p198640
Given 2 strings, a and b, return the number of the positions where they contain the 
same length 2 substring. So \"xxcaazz\" and \"xxbaaz\" yields 3, since the \"xx\", \"aa\", 
and \"az\" substrings appear in the same place in both strings.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringMatch :: String -> String -> Int
stringMatch a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        stringMatch "xxcaazz" "xxbaaz" `shouldBe` 3
    it "2" $
        stringMatch "abc" "abc" `shouldBe` 2
    it "0" $
        stringMatch "abc" "axc" `shouldBe` 0
    it "1" $
        stringMatch "hello" "he" `shouldBe` 1
    it "1" $
        stringMatch "he" "hello" `shouldBe` 1
    it "0" $
        stringMatch "h" "hello" `shouldBe` 0
    it "0" $
        stringMatch "" "hello" `shouldBe` 0
    it "1" $
        stringMatch "aabbccdd" "abbbxxd" `shouldBe` 1
    it "3" $
        stringMatch "aaxxaaxx" "iaxxai" `shouldBe` 3
    it "3" $
        stringMatch "iaxxai" "aaxxaaxx" `shouldBe` 3
