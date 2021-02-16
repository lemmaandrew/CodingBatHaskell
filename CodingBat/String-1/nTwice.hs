{- From https://codingbat.com/prob/p174148
Given a string and an int n, return a string made of the first and last n chars from 
the string. The string length will be at least n.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


nTwice :: String -> Int -> String
nTwice str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Helo\"" $
        nTwice "Hello" 2 `shouldBe` "Helo"
    it "\"Choate\"" $
        nTwice "Chocolate" 3 `shouldBe` "Choate"
    it "\"Ce\"" $
        nTwice "Chocolate" 1 `shouldBe` "Ce"
    it "\"\"" $
        nTwice "Chocolate" 0 `shouldBe` ""
    it "\"Hellello\"" $
        nTwice "Hello" 4 `shouldBe` "Hellello"
    it "\"CodeCode\"" $
        nTwice "Code" 4 `shouldBe` "CodeCode"
    it "\"Code\"" $
        nTwice "Code" 2 `shouldBe` "Code"
