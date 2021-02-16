{- From https://codingbat.com/prob/p139075
Given a string, return true if \"bad\" appears starting at index 0 or 1 in the string, 
such as with \"badxxx\" or \"xbadxx\" but not \"xxbadxx\". The string may be any length, 
including 0. Note: use .equals() to compare 2 strings.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


hasBad :: String -> Bool
hasBad str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        hasBad "badxx" `shouldBe` True
    it "True" $
        hasBad "xbadxx" `shouldBe` True
    it "False" $
        hasBad "xxbadxx" `shouldBe` False
    it "False" $
        hasBad "code" `shouldBe` False
    it "True" $
        hasBad "bad" `shouldBe` True
    it "False" $
        hasBad "ba" `shouldBe` False
    it "False" $
        hasBad "xba" `shouldBe` False
    it "True" $
        hasBad "xbad" `shouldBe` True
    it "False" $
        hasBad "" `shouldBe` False
    it "True" $
        hasBad "badyy" `shouldBe` True
