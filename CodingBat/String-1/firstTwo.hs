{-From https://codingbat.com/prob/p163411
Given a string, return the string made of its first two chars, so the String "Hello"
yields "He". If the string is shorter than length 2, return whatever there is, so "X"
yields "X", and the empty string "" yields the empty string "". Note that str.length()
returns the length of a string.
-}
import Test.Hspec


firstTwo :: String -> String
firstTwo str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"He\"" $ firstTwo "Hello" `shouldBe` "He"
   it "\"ab\"" $ firstTwo "abcdefg" `shouldBe` "ab"
   it "\"ab\"" $ firstTwo "ab" `shouldBe` "ab"

