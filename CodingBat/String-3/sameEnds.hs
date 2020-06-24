{-From https://codingbat.com/prob/p131516
Given a string, return the longest substring that appears at both the beginning and end
of the string without overlapping. For example, sameEnds("abXab") is "ab".
-}
import Test.Hspec


sameEnds :: String -> String
sameEnds string = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ab\"" $ sameEnds "abXYab" `shouldBe` "ab"
   it "\"x\"" $ sameEnds "xx" `shouldBe` "x"
   it "\"x\"" $ sameEnds "xxx" `shouldBe` "x"

