{-From https://codingbat.com/prob/p162477
Given a string, return a string length 1 from its front, unless front is false, in which
case return a string length 1 from its back. The string will be non-empty.
-}
import Test.Hspec


theEnd :: String -> Boolean -> String
theEnd str front = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"H\"" $ theEnd "Hello" true `shouldBe` "H"
   it "\"o\"" $ theEnd "Hello" false `shouldBe` "o"
   it "\"o\"" $ theEnd "oh" true `shouldBe` "o"

