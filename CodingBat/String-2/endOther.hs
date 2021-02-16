{- From https://codingbat.com/prob/p126880
Given two strings, return true if either of the strings appears at the very end of 
the other string, ignoring upper/lower case differences (in other words, the computation 
should not be \"case sensitive\"). Note:  str.toLowerCase() returns the lowercase version 
of a string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


endOther :: String -> String -> Bool
endOther a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        endOther "Hiabc" "abc" `shouldBe` True
    it "True" $
        endOther "AbC" "HiaBc" `shouldBe` True
    it "True" $
        endOther "abc" "abXabc" `shouldBe` True
    it "False" $
        endOther "Hiabc" "abcd" `shouldBe` False
    it "True" $
        endOther "Hiabc" "bc" `shouldBe` True
    it "False" $
        endOther "Hiabcx" "bc" `shouldBe` False
    it "True" $
        endOther "abc" "abc" `shouldBe` True
    it "True" $
        endOther "xyz" "12xyz" `shouldBe` True
    it "False" $
        endOther "yz" "12xz" `shouldBe` False
    it "True" $
        endOther "Z" "12xz" `shouldBe` True
    it "True" $
        endOther "12" "12" `shouldBe` True
    it "False" $
        endOther "abcXYZ" "abcDEF" `shouldBe` False
    it "False" $
        endOther "ab" "ab12" `shouldBe` False
    it "True" $
        endOther "ab" "12ab" `shouldBe` True
