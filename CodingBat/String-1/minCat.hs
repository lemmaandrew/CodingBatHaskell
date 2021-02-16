{- From https://codingbat.com/prob/p105745
Given two strings, append them together (known as \"concatenation\") and return the 
result. However, if the strings are different lengths, omit chars from the longer string 
so it is the same length as the shorter string. So \"Hello\" and \"Hi\" yield \"loHi\". 
The strings may be any length.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


minCat :: String -> String -> String
minCat a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"loHi\"" $
        minCat "Hello" "Hi" `shouldBe` "loHi"
    it "\"ellojava\"" $
        minCat "Hello" "java" `shouldBe` "ellojava"
    it "\"javaello\"" $
        minCat "java" "Hello" `shouldBe` "javaello"
    it "\"cx\"" $
        minCat "abc" "x" `shouldBe` "cx"
    it "\"xc\"" $
        minCat "x" "abc" `shouldBe` "xc"
    it "\"\"" $
        minCat "abc" "" `shouldBe` ""
