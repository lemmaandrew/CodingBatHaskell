{- From https://codingbat.com/prob/p172267
Given a string of even length, return the first half. So the string \"WooHoo\" yields 
\"Woo\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


firstHalf :: String -> String
firstHalf str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Woo\"" $
        firstHalf "WooHoo" `shouldBe` "Woo"
    it "\"Hello\"" $
        firstHalf "HelloThere" `shouldBe` "Hello"
    it "\"abc\"" $
        firstHalf "abcdef" `shouldBe` "abc"
    it "\"a\"" $
        firstHalf "ab" `shouldBe` "a"
    it "\"\"" $
        firstHalf "" `shouldBe` ""
    it "\"01234\"" $
        firstHalf "0123456789" `shouldBe` "01234"
    it "\"kit\"" $
        firstHalf "kitten" `shouldBe` "kit"
