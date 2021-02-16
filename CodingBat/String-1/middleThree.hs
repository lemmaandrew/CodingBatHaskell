{- From https://codingbat.com/prob/p115863
Given a string of odd length, return the string length 3 from its middle, so \"Candy\" 
yields \"and\". The string length will be at least 3.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


middleThree :: String -> String
middleThree str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"and\"" $
        middleThree "Candy" `shouldBe` "and"
    it "\"and\"" $
        middleThree "and" `shouldBe` "and"
    it "\"lvi\"" $
        middleThree "solving" `shouldBe` "lvi"
    it "\"yet\"" $
        middleThree "Hi yet Hi" `shouldBe` "yet"
    it "\"yet\"" $
        middleThree "java yet java" `shouldBe` "yet"
    it "\"col\"" $
        middleThree "Chocolate" `shouldBe` "col"
    it "\"xyz\"" $
        middleThree "XabcxyzabcX" `shouldBe` "xyz"
