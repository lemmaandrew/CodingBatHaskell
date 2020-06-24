{-From https://codingbat.com/prob/p165312
Given a string, return a string where for every char in the original, there are two chars.
-}
import Test.Hspec


doubleChar :: String -> String
doubleChar str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"TThhee\"" $ doubleChar "The" `shouldBe` "TThhee"
   it "\"AAAAbbbb\"" $ doubleChar "AAbb" `shouldBe` "AAAAbbbb"
   it "\"HHii--TThheerree\"" $ doubleChar "Hi-There" `shouldBe` "HHii--TThheerree"
   it "\"TThhee\"" $ doubleChar "The" `shouldBe` "TThhee"
   it "\"AAAAbbbb\"" $ doubleChar "AAbb" `shouldBe` "AAAAbbbb"
   it "\"HHii--TThheerree\"" $ doubleChar "Hi-There" `shouldBe` "HHii--TThheerree"

