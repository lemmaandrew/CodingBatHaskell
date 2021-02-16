{- From https://codingbat.com/prob/p142247
Given a string, if a length 2 substring appears at both its beginning and end, return 
a string without the substring at the beginning, so \"HelloHe\" yields \"lloHe\". 
The substring may overlap with itself, so \"Hi\" yields \"\". Otherwise, return the 
original string unchanged.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


without2 :: String -> String
without2 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"lloHe\"" $
        without2 "HelloHe" `shouldBe` "lloHe"
    it "\"HelloHi\"" $
        without2 "HelloHi" `shouldBe` "HelloHi"
    it "\"\"" $
        without2 "Hi" `shouldBe` ""
    it "\"Chocolate\"" $
        without2 "Chocolate" `shouldBe` "Chocolate"
    it "\"x\"" $
        without2 "xxx" `shouldBe` "x"
    it "\"\"" $
        without2 "xx" `shouldBe` ""
    it "\"x\"" $
        without2 "x" `shouldBe` "x"
    it "\"\"" $
        without2 "" `shouldBe` ""
    it "\"Fruits\"" $
        without2 "Fruits" `shouldBe` "Fruits"
