{- From https://codingbat.com/prob/p165312
Given a string, return a string where for every char in the original, there are two 
chars.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


doubleChar :: String -> String
doubleChar str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"TThhee\"" $
        doubleChar "The" `shouldBe` "TThhee"
    it "\"AAAAbbbb\"" $
        doubleChar "AAbb" `shouldBe` "AAAAbbbb"
    it "\"HHii--TThheerree\"" $
        doubleChar "Hi-There" `shouldBe` "HHii--TThheerree"
    it "\"WWoorrdd!!\"" $
        doubleChar "Word!" `shouldBe` "WWoorrdd!!"
    it "\"!!!!\"" $
        doubleChar "!!" `shouldBe` "!!!!"
    it "\"\"" $
        doubleChar "" `shouldBe` ""
    it "\"aa\"" $
        doubleChar "a" `shouldBe` "aa"
    it "\"..\"" $
        doubleChar "." `shouldBe` ".."
    it "\"aaaa\"" $
        doubleChar "aa" `shouldBe` "aaaa"
