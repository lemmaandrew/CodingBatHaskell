{- From https://codingbat.com/prob/p165666
Given a string, return a new string made of every other char starting with the first, 
so \"Hello\" yields \"Hlo\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringBits :: String -> String
stringBits str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Hlo\"" $
        stringBits "Hello" `shouldBe` "Hlo"
    it "\"H\"" $
        stringBits "Hi" `shouldBe` "H"
    it "\"Hello\"" $
        stringBits "Heeololeo" `shouldBe` "Hello"
    it "\"HHH\"" $
        stringBits "HiHiHi" `shouldBe` "HHH"
    it "\"\"" $
        stringBits "" `shouldBe` ""
    it "\"Getns\"" $
        stringBits "Greetings" `shouldBe` "Getns"
    it "\"Coot\"" $
        stringBits "Chocoate" `shouldBe` "Coot"
    it "\"p\"" $
        stringBits "pi" `shouldBe` "p"
    it "\"HloKte\"" $
        stringBits "Hello Kitten" `shouldBe` "HloKte"
    it "\"happy\"" $
        stringBits "hxaxpxpxy" `shouldBe` "happy"
