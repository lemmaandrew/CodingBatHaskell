{- From https://codingbat.com/prob/p186759
Given a string, return true if the first instance of \"x\" in the string is immediately 
followed by another \"x\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


doubleX :: String -> Bool
doubleX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        doubleX "axxbb" `shouldBe` True
    it "False" $
        doubleX "axaxax" `shouldBe` False
    it "True" $
        doubleX "xxxxx" `shouldBe` True
    it "False" $
        doubleX "xaxxx" `shouldBe` False
    it "False" $
        doubleX "aaaax" `shouldBe` False
    it "False" $
        doubleX "" `shouldBe` False
    it "False" $
        doubleX "abc" `shouldBe` False
    it "False" $
        doubleX "x" `shouldBe` False
    it "True" $
        doubleX "xx" `shouldBe` True
    it "False" $
        doubleX "xax" `shouldBe` False
    it "False" $
        doubleX "xaxx" `shouldBe` False
