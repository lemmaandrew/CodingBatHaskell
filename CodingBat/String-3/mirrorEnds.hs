{-From https://codingbat.com/prob/p139411
Given a string, look for a mirror image (backwards) string at both the beginning and end
of the given string. In other words, zero or more characters at the very begining of
the given string, and at the very end of the string in reverse order (possibly overlapping).
For example, the string "abXYZba" has the mirror end "ab".
-}
import Test.Hspec


mirrorEnds :: String -> String
mirrorEnds string = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ab\"" $ mirrorEnds "abXYZba" `shouldBe` "ab"
   it "\"a\"" $ mirrorEnds "abca" `shouldBe` "a"
   it "\"aba\"" $ mirrorEnds "aba" `shouldBe` "aba"
   it "\"ab\"" $ mirrorEnds "abXYZba" `shouldBe` "ab"
   it "\"a\"" $ mirrorEnds "abca" `shouldBe` "a"
   it "\"aba\"" $ mirrorEnds "aba" `shouldBe` "aba"

