{-From https://codingbat.com/prob/p136351
Given a string, we'll say that the front is the first 3 chars of the string. If the
string length is less than 3, the front is whatever is there. Return a new string which
is 3 copies of the front.
-}
import Test.Hspec


front3 :: String -> String
front3 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"JavJavJav\"" $ front3 "Java" `shouldBe` "JavJavJav"
   it "\"ChoChoCho\"" $ front3 "Chocolate" `shouldBe` "ChoChoCho"
   it "\"abcabcabc\"" $ front3 "abc" `shouldBe` "abcabcabc"
   it "\"JavJavJav\"" $ front3 "Java" `shouldBe` "JavJavJav"
   it "\"ChoChoCho\"" $ front3 "Chocolate" `shouldBe` "ChoChoCho"
   it "\"abcabcabc\"" $ front3 "abc" `shouldBe` "abcabcabc"

