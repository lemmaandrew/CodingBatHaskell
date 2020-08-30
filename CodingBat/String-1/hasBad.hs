{-From https://codingbat.com/prob/p139075
Given a string, return true if "bad" appears starting at index 0 or 1 in the string,
such as with "badxxx" or "xbadxx" but not "xxbadxx". The string may be any length, including
0. Note: use .equals() to compare 2 strings.
-}
import Test.Hspec


hasBad :: String -> Boolean
hasBad str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ hasBad "badxx" `shouldBe` true
   it "true" $ hasBad "xbadxx" `shouldBe` true
   it "false" $ hasBad "xxbadxx" `shouldBe` false

