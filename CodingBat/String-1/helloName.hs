{-From https://codingbat.com/prob/p171896
Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".
-}
import Test.Hspec


helloName :: String -> String
helloName name = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"Hello Bob!\"" $ helloName "Bob" `shouldBe` "Hello Bob!"
   it "\"Hello Alice!\"" $ helloName "Alice" `shouldBe` "Hello Alice!"
   it "\"Hello X!\"" $ helloName "X" `shouldBe` "Hello X!"

