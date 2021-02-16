{- From https://codingbat.com/prob/p125185
Given two strings, a and b, create a bigger string made of the first char of a, the 
first char of b, the second char of a, the second char of b, and so on. Any leftover chars 
go at the end of the result.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


mixString :: String -> String -> String
mixString a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"axbycz\"" $
        mixString "abc" "xyz" `shouldBe` "axbycz"
    it "\"HTihere\"" $
        mixString "Hi" "There" `shouldBe` "HTihere"
    it "\"xTxhxexre\"" $
        mixString "xxxx" "There" `shouldBe` "xTxhxexre"
    it "\"xXxx\"" $
        mixString "xxx" "X" `shouldBe` "xXxx"
    it "\"22/7 around\"" $
        mixString "2/" "27 around" `shouldBe` "22/7 around"
    it "\"Hello\"" $
        mixString "" "Hello" `shouldBe` "Hello"
    it "\"Abc\"" $
        mixString "Abc" "" `shouldBe` "Abc"
    it "\"\"" $
        mixString "" "" `shouldBe` ""
    it "\"ab\"" $
        mixString "a" "b" `shouldBe` "ab"
    it "\"abx\"" $
        mixString "ax" "b" `shouldBe` "abx"
    it "\"abx\"" $
        mixString "a" "bx" `shouldBe` "abx"
    it "\"SLoong\"" $
        mixString "So" "Long" `shouldBe` "SLoong"
    it "\"LSoong\"" $
        mixString "Long" "So" `shouldBe` "LSoong"
