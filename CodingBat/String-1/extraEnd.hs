{- From https://codingbat.com/prob/p108853
Given a string, return a new string made of 3 copies of the last 2 chars of the original 
string. The string length will be at least 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


extraEnd :: String -> String
extraEnd str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"lololo\"" $
        extraEnd "Hello" `shouldBe` "lololo"
    it "\"ababab\"" $
        extraEnd "ab" `shouldBe` "ababab"
    it "\"HiHiHi\"" $
        extraEnd "Hi" `shouldBe` "HiHiHi"
    it "\"dydydy\"" $
        extraEnd "Candy" `shouldBe` "dydydy"
    it "\"dedede\"" $
        extraEnd "Code" `shouldBe` "dedede"
