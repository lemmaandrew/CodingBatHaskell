{-From https://codingbat.com/prob/p126880
Given two strings, return true if either of the strings appears at the very end of the
other string, ignoring upper/lower case differences (in other words, the computation should
not be "case sensitive"). Note:    str.toLowerCase() returns the lowercase version of a string.
-}
import Test.Hspec


endOther :: String -> String -> Boolean
endOther a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ endOther "Hiabc" "abc" `shouldBe` true
   it "true" $ endOther "AbC" "HiaBc" `shouldBe` true
   it "true" $ endOther "abc" "abXabc" `shouldBe` true

