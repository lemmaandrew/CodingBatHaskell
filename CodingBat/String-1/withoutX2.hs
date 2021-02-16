{- From https://codingbat.com/prob/p151359
Given a string, if one or both of the first 2 chars is 'x', return the string without 
those 'x' chars, and otherwise return the string unchanged. This is a little harder than 
it looks.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


withoutX2 :: String -> String
withoutX2 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Hi\"" $
        withoutX2 "xHi" `shouldBe` "Hi"
    it "\"Hi\"" $
        withoutX2 "Hxi" `shouldBe` "Hi"
    it "\"Hi\"" $
        withoutX2 "Hi" `shouldBe` "Hi"
    it "\"Hi\"" $
        withoutX2 "xxHi" `shouldBe` "Hi"
    it "\"Hix\"" $
        withoutX2 "Hix" `shouldBe` "Hix"
    it "\"axb\"" $
        withoutX2 "xaxb" `shouldBe` "axb"
    it "\"\"" $
        withoutX2 "xx" `shouldBe` ""
    it "\"\"" $
        withoutX2 "x" `shouldBe` ""
    it "\"\"" $
        withoutX2 "" `shouldBe` ""
    it "\"Hello\"" $
        withoutX2 "Hello" `shouldBe` "Hello"
    it "\"Hexllo\"" $
        withoutX2 "Hexllo" `shouldBe` "Hexllo"
    it "\"Hxllo\"" $
        withoutX2 "xHxllo" `shouldBe` "Hxllo"
