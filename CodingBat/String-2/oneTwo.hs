{- From https://codingbat.com/prob/p122943
Given a string, compute a new string by moving the first char to come after the next 
two chars, so \"abc\" yields \"bca\". Repeat this process for each subsequent group 
of 3 chars, so \"abcdef\" yields \"bcaefd\". Ignore any group of fewer than 3 chars 
at the end.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


oneTwo :: String -> String
oneTwo str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"bca\"" $
        oneTwo "abc" `shouldBe` "bca"
    it "\"cat\"" $
        oneTwo "tca" `shouldBe` "cat"
    it "\"catdog\"" $
        oneTwo "tcagdo" `shouldBe` "catdog"
    it "\"hocolctea\"" $
        oneTwo "chocolate" `shouldBe` "hocolctea"
    it "\"231564897\"" $
        oneTwo "1234567890" `shouldBe` "231564897"
    it "\"abxabxabxabxabxabxabx\"" $
        oneTwo "xabxabxabxabxabxabxab" `shouldBe` "abxabxabxabxabxabxabx"
    it "\"bcaefd\"" $
        oneTwo "abcdefx" `shouldBe` "bcaefd"
    it "\"bcaefd\"" $
        oneTwo "abcdefxy" `shouldBe` "bcaefd"
    it "\"bcaefdyzx\"" $
        oneTwo "abcdefxyz" `shouldBe` "bcaefdyzx"
    it "\"\"" $
        oneTwo "" `shouldBe` ""
    it "\"\"" $
        oneTwo "x" `shouldBe` ""
    it "\"\"" $
        oneTwo "xy" `shouldBe` ""
    it "\"yzx\"" $
        oneTwo "xyz" `shouldBe` "yzx"
    it "\"bcaefdhigkljmnkpqostrvwuyzx231564897\"" $
        oneTwo "abcdefghijklkmnopqrstuvwxyz1234567890" `shouldBe` "bcaefdhigkljmnkpqostrvwuyzx231564897"
    it "\"bcaefdhigkljmnkpqostrvwuyzx231564897\"" $
        oneTwo "abcdefghijklkmnopqrstuvwxyz123456789" `shouldBe` "bcaefdhigkljmnkpqostrvwuyzx231564897"
    it "\"bcaefdhigkljmnkpqostrvwuyzx231564\"" $
        oneTwo "abcdefghijklkmnopqrstuvwxyz12345678" `shouldBe` "bcaefdhigkljmnkpqostrvwuyzx231564"
