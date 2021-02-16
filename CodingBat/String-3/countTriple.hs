{- From https://codingbat.com/prob/p195714
We'll say that a \"triple\" in a string is a char appearing three times in a row. 
Return the number of triples in the given string. The triples may overlap.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countTriple :: String -> Int
countTriple str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countTriple "abcXXXabc" `shouldBe` 1
    it "3" $
        countTriple "xxxabyyyycd" `shouldBe` 3
    it "0" $
        countTriple "a" `shouldBe` 0
    it "0" $
        countTriple "" `shouldBe` 0
    it "1" $
        countTriple "XXXabc" `shouldBe` 1
    it "2" $
        countTriple "XXXXabc" `shouldBe` 2
    it "3" $
        countTriple "XXXXXabc" `shouldBe` 3
    it "3" $
        countTriple "222abyyycdXXX" `shouldBe` 3
    it "4" $
        countTriple "abYYYabXXXXXab" `shouldBe` 4
    it "0" $
        countTriple "abYYXabXXYXXab" `shouldBe` 0
    it "0" $
        countTriple "abYYXabXXYXXab" `shouldBe` 0
    it "1" $
        countTriple "122abhhh2" `shouldBe` 1
