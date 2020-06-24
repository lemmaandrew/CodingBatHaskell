{-From https://codingbat.com/prob/p138183
Given 2 strings, a and b, return a new string made of the first char of a and the
last char of b, so "yo" and "java" yields "ya". If either string is length 0, use '@'
for its missing char.
-}
import Test.Hspec


lastChars :: String -> String -> String
lastChars a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ls\"" $ lastChars "last" "chars" `shouldBe` "ls"
   it "\"ya\"" $ lastChars "yo" "java" `shouldBe` "ya"
   it "\"h@\"" $ lastChars "hi" "" `shouldBe` "h@"

