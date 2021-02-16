{- From https://codingbat.com/prob/p171260
Given a string, return a version where all the \"x\" have been removed. Except an 
\"x\" at the very start or end should not be removed.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringX :: String -> String
stringX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"xHix\"" $
        stringX "xxHxix" `shouldBe` "xHix"
    it "\"abcd\"" $
        stringX "abxxxcd" `shouldBe` "abcd"
    it "\"xabcdx\"" $
        stringX "xabxxxcdx" `shouldBe` "xabcdx"
    it "\"xKittenx\"" $
        stringX "xKittenx" `shouldBe` "xKittenx"
    it "\"Hello\"" $
        stringX "Hello" `shouldBe` "Hello"
    it "\"xx\"" $
        stringX "xx" `shouldBe` "xx"
    it "\"x\"" $
        stringX "x" `shouldBe` "x"
    it "\"\"" $
        stringX "" `shouldBe` ""
