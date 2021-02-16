{- From https://codingbat.com/prob/p152339
Given a string and an int n, return a string made of n repetitions of the last n 
characters of the string. You may assume that n is between 0 and the length of the string, 
inclusive.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


repeatEnd :: String -> Int -> String
repeatEnd str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"llollollo\"" $
        repeatEnd "Hello" 3 `shouldBe` "llollollo"
    it "\"lolo\"" $
        repeatEnd "Hello" 2 `shouldBe` "lolo"
    it "\"o\"" $
        repeatEnd "Hello" 1 `shouldBe` "o"
    it "\"\"" $
        repeatEnd "Hello" 0 `shouldBe` ""
    it "\"abcabcabc\"" $
        repeatEnd "abc" 3 `shouldBe` "abcabcabc"
    it "\"3434\"" $
        repeatEnd "1234" 2 `shouldBe` "3434"
    it "\"234234234\"" $
        repeatEnd "1234" 3 `shouldBe` "234234234"
    it "\"\"" $
        repeatEnd "" 0 `shouldBe` ""
