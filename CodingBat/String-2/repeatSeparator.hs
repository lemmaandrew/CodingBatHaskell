{- From https://codingbat.com/prob/p109637
Given two strings, word and a separator sep, return a big string made of count occurrences 
of the word, separated by the separator string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


repeatSeparator :: String -> String -> Int -> String
repeatSeparator word sep count = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"WordXWordXWord\"" $
        repeatSeparator "Word" "X" 3 `shouldBe` "WordXWordXWord"
    it "\"ThisAndThis\"" $
        repeatSeparator "This" "And" 2 `shouldBe` "ThisAndThis"
    it "\"This\"" $
        repeatSeparator "This" "And" 1 `shouldBe` "This"
    it "\"Hi-n-Hi\"" $
        repeatSeparator "Hi" "-n-" 2 `shouldBe` "Hi-n-Hi"
    it "\"AAA\"" $
        repeatSeparator "AAA" "" 1 `shouldBe` "AAA"
    it "\"\"" $
        repeatSeparator "AAA" "" 0 `shouldBe` ""
    it "\"ABABABABA\"" $
        repeatSeparator "A" "B" 5 `shouldBe` "ABABABABA"
    it "\"abcXXabcXXabc\"" $
        repeatSeparator "abc" "XX" 3 `shouldBe` "abcXXabcXXabc"
    it "\"abcXXabc\"" $
        repeatSeparator "abc" "XX" 2 `shouldBe` "abcXXabc"
    it "\"abc\"" $
        repeatSeparator "abc" "XX" 1 `shouldBe` "abc"
    it "\"XYZaXYZ\"" $
        repeatSeparator "XYZ" "a" 2 `shouldBe` "XYZaXYZ"
