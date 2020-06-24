{-From https://codingbat.com/prob/p126880
Given two strings, return true if either of the strings appears at the very end of the
other string, ignoring upper/lower case differences (in other words, the computation should
not be "case sensitive"). Note:    str.toLowerCase() returns the lowercase version of a string.
-}
import Test.Hspec


endOther :: String -> String -> Bool
endOther a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ endOther "Hiabc" "abc" `shouldBe` True
   it "True" $ endOther "AbC" "HiaBc" `shouldBe` True
   it "True" $ endOther "abc" "abXabc" `shouldBe` True

