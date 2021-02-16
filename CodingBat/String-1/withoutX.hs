{- From https://codingbat.com/prob/p151940
Given a string, if the first or last chars are 'x', return the string without those 
'x' chars, and otherwise return the string unchanged.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


withoutX :: String -> String
withoutX str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Hi\"" $
        withoutX "xHix" `shouldBe` "Hi"
    it "\"Hi\"" $
        withoutX "xHi" `shouldBe` "Hi"
    it "\"Hxi\"" $
        withoutX "Hxix" `shouldBe` "Hxi"
    it "\"Hi\"" $
        withoutX "Hi" `shouldBe` "Hi"
    it "\"xHi\"" $
        withoutX "xxHi" `shouldBe` "xHi"
    it "\"Hi\"" $
        withoutX "Hix" `shouldBe` "Hi"
    it "\"axb\"" $
        withoutX "xaxbx" `shouldBe` "axb"
    it "\"\"" $
        withoutX "xx" `shouldBe` ""
    it "\"\"" $
        withoutX "x" `shouldBe` ""
    it "\"\"" $
        withoutX "" `shouldBe` ""
    it "\"Hello\"" $
        withoutX "Hello" `shouldBe` "Hello"
    it "\"Hexllo\"" $
        withoutX "Hexllo" `shouldBe` "Hexllo"
