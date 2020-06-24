{-From https://codingbat.com/prob/p110141
Given a string, return a version without the first 2 chars. Except keep the first char
if it is 'a' and keep the second char if it is 'b'. The string may be any length.
Harder than it looks.
-}
import Test.Hspec


deFront :: String -> String
deFront str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"llo\"" $ deFront "Hello" `shouldBe` "llo"
   it "\"va\"" $ deFront "java" `shouldBe` "va"
   it "\"aay\"" $ deFront "away" `shouldBe` "aay"
   it "\"llo\"" $ deFront "Hello" `shouldBe` "llo"
   it "\"va\"" $ deFront "java" `shouldBe` "va"
   it "\"aay\"" $ deFront "away" `shouldBe` "aay"

