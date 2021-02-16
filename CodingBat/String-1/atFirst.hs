{- From https://codingbat.com/prob/p139076
Given a string, return a string length 2 made of its first 2 chars. If the string 
length is less than 2, use '@' for the missing chars.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


atFirst :: String -> String
atFirst str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"he\"" $
        atFirst "hello" `shouldBe` "he"
    it "\"hi\"" $
        atFirst "hi" `shouldBe` "hi"
    it "\"h@\"" $
        atFirst "h" `shouldBe` "h@"
    it "\"@@\"" $
        atFirst "" `shouldBe` "@@"
    it "\"ki\"" $
        atFirst "kitten" `shouldBe` "ki"
    it "\"ja\"" $
        atFirst "java" `shouldBe` "ja"
    it "\"j@\"" $
        atFirst "j" `shouldBe` "j@"
