{-From https://codingbat.com/prob/p194786
Given a string of any length, return a new string where the last 2 chars, if present,
are swapped, so "coding" yields "codign".
-}
import Test.Hspec


lastTwo :: String -> String
lastTwo str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"codign\"" $ lastTwo "coding" `shouldBe` "codign"
   it "\"cta\"" $ lastTwo "cat" `shouldBe` "cta"
   it "\"ba\"" $ lastTwo "ab" `shouldBe` "ba"
   it "\"codign\"" $ lastTwo "coding" `shouldBe` "codign"
   it "\"cta\"" $ lastTwo "cat" `shouldBe` "cta"
   it "\"ba\"" $ lastTwo "ab" `shouldBe` "ba"

