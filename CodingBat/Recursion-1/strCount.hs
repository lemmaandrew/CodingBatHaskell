{- From https://codingbat.com/prob/p186177
Given a string and a non-empty substring sub, compute recursively the number of times 
that sub appears in the string, without the sub strings overlapping.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


strCount :: String -> String -> Int
strCount str sub = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        strCount "catcowcat" "cat" `shouldBe` 2
    it "1" $
        strCount "catcowcat" "cow" `shouldBe` 1
    it "0" $
        strCount "catcowcat" "dog" `shouldBe` 0
    it "2" $
        strCount "cacatcowcat" "cat" `shouldBe` 2
    it "2" $
        strCount "xyx" "x" `shouldBe` 2
    it "4" $
        strCount "iiiijj" "i" `shouldBe` 4
    it "2" $
        strCount "iiiijj" "ii" `shouldBe` 2
    it "1" $
        strCount "iiiijj" "iii" `shouldBe` 1
    it "2" $
        strCount "iiiijj" "j" `shouldBe` 2
    it "1" $
        strCount "iiiijj" "jj" `shouldBe` 1
    it "4" $
        strCount "aaabababab" "ab" `shouldBe` 4
    it "1" $
        strCount "aaabababab" "aa" `shouldBe` 1
    it "6" $
        strCount "aaabababab" "a" `shouldBe` 6
    it "4" $
        strCount "aaabababab" "b" `shouldBe` 4
