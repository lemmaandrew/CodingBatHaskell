{-From https://codingbat.com/prob/p117334
Given a non-empty string like "Code" return a string like "CCoCodCode".
-}
import Test.Hspec


stringSplosion :: String -> String
stringSplosion str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"CCoCodCode\"" $ stringSplosion "Code" `shouldBe` "CCoCodCode"
   it "\"aababc\"" $ stringSplosion "abc" `shouldBe` "aababc"
   it "\"aab\"" $ stringSplosion "ab" `shouldBe` "aab"

