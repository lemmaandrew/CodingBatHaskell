{-From https://codingbat.com/prob/p162477
Given a string, return a string length 1 from its front, unless front is false, in which
case return a string length 1 from its back. The string will be non-empty.
-}
import Test.Hspec


theEnd :: String -> Bool -> String
theEnd str front = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"H\"" $ theEnd "Hello" True `shouldBe` "H"
   it "\"o\"" $ theEnd "Hello" False `shouldBe` "o"
   it "\"o\"" $ theEnd "oh" True `shouldBe` "o"
   it "\"H\"" $ theEnd "Hello" True `shouldBe` "H"
   it "\"o\"" $ theEnd "Hello" False `shouldBe` "o"
   it "\"o\"" $ theEnd "oh" True `shouldBe` "o"

