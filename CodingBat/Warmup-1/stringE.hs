{-From https://codingbat.com/prob/p173784
Return true if the given string contains between 1 and 3 'e' chars.
-}
import Test.Hspec


stringE :: String -> Bool
stringE str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ stringE "Hello" `shouldBe` True
   it "True" $ stringE "Heelle" `shouldBe` True
   it "False" $ stringE "Heelele" `shouldBe` False
   it "True" $ stringE "Hello" `shouldBe` True
   it "True" $ stringE "Heelle" `shouldBe` True
   it "False" $ stringE "Heelele" `shouldBe` False

