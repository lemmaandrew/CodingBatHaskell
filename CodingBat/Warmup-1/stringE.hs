{-From https://codingbat.com/prob/p173784
Return true if the given string contains between 1 and 3 'e' chars.
-}
import Test.Hspec


stringE :: String -> Boolean
stringE str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ stringE "Hello" `shouldBe` true
   it "true" $ stringE "Heelle" `shouldBe` true
   it "false" $ stringE "Heelele" `shouldBe` false

