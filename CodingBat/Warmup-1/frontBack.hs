{- From https://codingbat.com/prob/p123384
Given a string, return a new string where the first and last chars have been exchanged.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


frontBack :: String -> String
frontBack str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"eodc\"" $
        frontBack "code" `shouldBe` "eodc"
    it "\"a\"" $
        frontBack "a" `shouldBe` "a"
    it "\"ba\"" $
        frontBack "ab" `shouldBe` "ba"
    it "\"cba\"" $
        frontBack "abc" `shouldBe` "cba"
    it "\"\"" $
        frontBack "" `shouldBe` ""
    it "\"ehocolatC\"" $
        frontBack "Chocolate" `shouldBe` "ehocolatC"
    it "\"Java\"" $
        frontBack "aavJ" `shouldBe` "Java"
    it "\"oellh\"" $
        frontBack "hello" `shouldBe` "oellh"
