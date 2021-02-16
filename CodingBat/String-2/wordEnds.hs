{- From https://codingbat.com/prob/p147538
Given a string and a non-empty word string, return a string made of each char just 
before and just after every appearance of the word in the string. Ignore cases where there 
is no char before or after the word, and a char may be included twice if it is between 
two words.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


wordEnds :: String -> String -> String
wordEnds str word = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"c13i\"" $
        wordEnds "abcXY123XYijk" "XY" `shouldBe` "c13i"
    it "\"13\"" $
        wordEnds "XY123XY" "XY" `shouldBe` "13"
    it "\"11\"" $
        wordEnds "XY1XY" "XY" `shouldBe` "11"
    it "\"XY\"" $
        wordEnds "XYXY" "XY" `shouldBe` "XY"
    it "\"\"" $
        wordEnds "XY" "XY" `shouldBe` ""
    it "\"\"" $
        wordEnds "Hi" "XY" `shouldBe` ""
    it "\"\"" $
        wordEnds "" "XY" `shouldBe` ""
    it "\"cxziij\"" $
        wordEnds "abc1xyz1i1j" "1" `shouldBe` "cxziij"
    it "\"cxz\"" $
        wordEnds "abc1xyz1" "1" `shouldBe` "cxz"
    it "\"cxz11\"" $
        wordEnds "abc1xyz11" "1" `shouldBe` "cxz11"
    it "\"11\"" $
        wordEnds "abc1xyz1abc" "abc" `shouldBe` "11"
    it "\"acac\"" $
        wordEnds "abc1xyz1abc" "b" `shouldBe` "acac"
    it "\"1111\"" $
        wordEnds "abc1abc1abc" "abc" `shouldBe` "1111"
