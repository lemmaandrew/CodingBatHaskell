{-From https://codingbat.com/prob/p174254
Given a string, return a version without both the first and last char of the string.
The string may be any length, including 0.
-}
import Test.Hspec


withouEnd2 :: String -> String
withouEnd2 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ell\"" $ withouEnd2 "Hello" `shouldBe` "ell"
   it "\"b\"" $ withouEnd2 "abc" `shouldBe` "b"
   it "\"\"" $ withouEnd2 "ab" `shouldBe` ""
   it "\"ell\"" $ withouEnd2 "Hello" `shouldBe` "ell"
   it "\"b\"" $ withouEnd2 "abc" `shouldBe` "b"
   it "\"\"" $ withouEnd2 "ab" `shouldBe` ""

