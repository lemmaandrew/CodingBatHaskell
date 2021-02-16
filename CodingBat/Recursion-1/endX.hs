{- From https://codingbat.com/prob/p105722
Given a string, compute recursively a new string where all the lowercase 'x' chars 
have been moved to the end of the string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


endX :: String -> String
endX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"rexx\"" $
        endX "xxre" `shouldBe` "rexx"
    it "\"hixxxx\"" $
        endX "xxhixx" `shouldBe` "hixxxx"
    it "\"hihixxx\"" $
        endX "xhixhix" `shouldBe` "hihixxx"
    it "\"hiy\"" $
        endX "hiy" `shouldBe` "hiy"
    it "\"h\"" $
        endX "h" `shouldBe` "h"
    it "\"x\"" $
        endX "x" `shouldBe` "x"
    it "\"xx\"" $
        endX "xx" `shouldBe` "xx"
    it "\"\"" $
        endX "" `shouldBe` ""
    it "\"bxx\"" $
        endX "bxx" `shouldBe` "bxx"
    it "\"baxx\"" $
        endX "bxax" `shouldBe` "baxx"
    it "\"aaaxxx\"" $
        endX "axaxax" `shouldBe` "aaaxxx"
    it "\"hixxx\"" $
        endX "xxhxi" `shouldBe` "hixxx"
