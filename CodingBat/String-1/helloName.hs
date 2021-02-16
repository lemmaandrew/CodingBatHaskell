{- From https://codingbat.com/prob/p171896
Given a string name, e.g. \"Bob\", return a greeting of the form \"Hello Bob!\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


helloName :: String -> String
helloName name = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Hello Bob!\"" $
        helloName "Bob" `shouldBe` "Hello Bob!"
    it "\"Hello Alice!\"" $
        helloName "Alice" `shouldBe` "Hello Alice!"
    it "\"Hello X!\"" $
        helloName "X" `shouldBe` "Hello X!"
    it "\"Hello Dolly!\"" $
        helloName "Dolly" `shouldBe` "Hello Dolly!"
    it "\"Hello Alpha!\"" $
        helloName "Alpha" `shouldBe` "Hello Alpha!"
    it "\"Hello Omega!\"" $
        helloName "Omega" `shouldBe` "Hello Omega!"
    it "\"Hello Goodbye!\"" $
        helloName "Goodbye" `shouldBe` "Hello Goodbye!"
    it "\"Hello ho ho ho!\"" $
        helloName "ho ho ho" `shouldBe` "Hello ho ho ho!"
    it "\"Hello xyz!!\"" $
        helloName "xyz!" `shouldBe` "Hello xyz!!"
    it "\"Hello Hello!\"" $
        helloName "Hello" `shouldBe` "Hello Hello!"
