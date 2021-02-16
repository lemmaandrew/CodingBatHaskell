{- From https://codingbat.com/prob/p132118
Given two strings, append them together (known as \"concatenation\") and return the 
result. However, if the concatenation creates a double-char, then omit one of the chars, 
so \"abc\" and \"cat\" yields \"abcat\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


conCat :: String -> String -> String
conCat a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"abcat\"" $
        conCat "abc" "cat" `shouldBe` "abcat"
    it "\"dogcat\"" $
        conCat "dog" "cat" `shouldBe` "dogcat"
    it "\"abc\"" $
        conCat "abc" "" `shouldBe` "abc"
    it "\"cat\"" $
        conCat "" "cat" `shouldBe` "cat"
    it "\"pig\"" $
        conCat "pig" "g" `shouldBe` "pig"
    it "\"pigdoggy\"" $
        conCat "pig" "doggy" `shouldBe` "pigdoggy"
