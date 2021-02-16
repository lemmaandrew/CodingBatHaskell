{- From https://codingbat.com/prob/p137918
Given a string that contains a single pair of parenthesis, compute recursively a 
new string made of only of the parenthesis and their contents, so \"xyz(abc)123\" yields 
\"(abc)\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


parenBit :: String -> String
parenBit str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"(abc)\"" $
        parenBit "xyz(abc)123" `shouldBe` "(abc)"
    it "\"(hello)\"" $
        parenBit "x(hello)" `shouldBe` "(hello)"
    it "\"(xy)\"" $
        parenBit "(xy)1" `shouldBe` "(xy)"
    it "\"(possible)\"" $
        parenBit "not really (possible)" `shouldBe` "(possible)"
    it "\"(abc)\"" $
        parenBit "(abc)" `shouldBe` "(abc)"
    it "\"(abc)\"" $
        parenBit "(abc)xyz" `shouldBe` "(abc)"
    it "\"(abc)\"" $
        parenBit "(abc)x" `shouldBe` "(abc)"
    it "\"(x)\"" $
        parenBit "(x)" `shouldBe` "(x)"
    it "\"()\"" $
        parenBit "()" `shouldBe` "()"
    it "\"(ipsa)\"" $
        parenBit "res (ipsa) loquitor" `shouldBe` "(ipsa)"
    it "\"(not really)\"" $
        parenBit "hello(not really)there" `shouldBe` "(not really)"
    it "\"(ab)\"" $
        parenBit "ab(ab)ab" `shouldBe` "(ab)"
