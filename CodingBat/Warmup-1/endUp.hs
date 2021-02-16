{- From https://codingbat.com/prob/p125268
Given a string, return a new string where the last 3 chars are now in upper case. 
If the string has less than 3 chars, uppercase whatever is there. Note that str.toUpperCase() 
returns the uppercase version of a string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


endUp :: String -> String
endUp str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"HeLLO\"" $
        endUp "Hello" `shouldBe` "HeLLO"
    it "\"hi thERE\"" $
        endUp "hi there" `shouldBe` "hi thERE"
    it "\"HI\"" $
        endUp "hi" `shouldBe` "HI"
    it "\"woo HOO\"" $
        endUp "woo hoo" `shouldBe` "woo HOO"
    it "\"xyZ12\"" $
        endUp "xyz12" `shouldBe` "xyZ12"
    it "\"X\"" $
        endUp "x" `shouldBe` "X"
    it "\"\"" $
        endUp "" `shouldBe` ""
