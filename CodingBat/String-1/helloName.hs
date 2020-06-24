{-From https://codingbat.com/prob/p171896
Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".
-}
import Test.Hspec


helloName :: String -> String
helloName name = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"HelloBob!\"" $ helloName "Bob" `shouldBe` "HelloBob!"
   it "\"HelloAlice!\"" $ helloName "Alice" `shouldBe` "HelloAlice!"
   it "\"HelloX!\"" $ helloName "X" `shouldBe` "HelloX!"

