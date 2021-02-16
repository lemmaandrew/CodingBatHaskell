{- From https://codingbat.com/prob/p197890
Given a string, return the sum of the digits 0-9 that appear in the string, ignoring 
all other characters. Return 0 if there are no digits in the string. (Note: Character.isDigit(char) 
tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts 
a string to an int.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumDigits :: String -> Int
sumDigits str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        sumDigits "aa1bc2d3" `shouldBe` 6
    it "8" $
        sumDigits "aa11b33" `shouldBe` 8
    it "0" $
        sumDigits "Chocolate" `shouldBe` 0
    it "7" $
        sumDigits "5hoco1a1e" `shouldBe` 7
    it "12" $
        sumDigits "123abc123" `shouldBe` 12
    it "0" $
        sumDigits "" `shouldBe` 0
    it "0" $
        sumDigits "Hello" `shouldBe` 0
    it "12" $
        sumDigits "X1z9b2" `shouldBe` 12
    it "14" $
        sumDigits "5432a" `shouldBe` 14
