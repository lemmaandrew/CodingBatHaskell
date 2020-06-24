{-From https://codingbat.com/prob/p154137
Given a string, return a string where every appearance of the lowercase word "is" has
been replaced with "is not". The word "is" should not be immediately preceeded or followed
by a letter -- so for example the "is" in "this" does not count. (Note: Character.isLetter(char)
tests if a char is a letter.)
-}
import Test.Hspec


notReplace :: String -> String
notReplace str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"isnottest\"" $ notReplace "istest" `shouldBe` "isnottest"
   it "\"isnot-isnot\"" $ notReplace "is-is" `shouldBe` "isnot-isnot"
   it "\"Thisisnotright\"" $ notReplace "Thisisright" `shouldBe` "Thisisnotright"
   it "\"isnottest\"" $ notReplace "istest" `shouldBe` "isnottest"
   it "\"isnot-isnot\"" $ notReplace "is-is" `shouldBe` "isnot-isnot"
   it "\"Thisisnotright\"" $ notReplace "Thisisright" `shouldBe` "Thisisnotright"

