{- From https://codingbat.com/prob/p121193
Given a string, return the sum of the numbers appearing in the string, ignoring all 
other characters. A number is a series of 1 or more digit chars in a row. (Note: Character.isDigit(char) 
tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts 
a string to an int.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumNumbers :: String -> Int
sumNumbers str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "123" $
        sumNumbers "abc123xyz" `shouldBe` 123
    it "44" $
        sumNumbers "aa11b33" `shouldBe` 44
    it "18" $
        sumNumbers "7 11" `shouldBe` 18
    it "0" $
        sumNumbers "Chocolate" `shouldBe` 0
    it "7" $
        sumNumbers "5hoco1a1e" `shouldBe` 7
    it "7" $
        sumNumbers "5$$1;;1!!" `shouldBe` 7
    it "1245" $
        sumNumbers "a1234bb11" `shouldBe` 1245
    it "0" $
        sumNumbers "" `shouldBe` 0
    it "25" $
        sumNumbers "a22bbb3" `shouldBe` 25
