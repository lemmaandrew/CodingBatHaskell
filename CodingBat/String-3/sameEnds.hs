{- From https://codingbat.com/prob/p131516
Given a string, return the longest substring that appears at both the beginning and 
end of the string without overlapping. For example, sameEnds(\"abXab\") is \"ab\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sameEnds :: String -> String
sameEnds string = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ab\"" $
        sameEnds "abXYab" `shouldBe` "ab"
    it "\"x\"" $
        sameEnds "xx" `shouldBe` "x"
    it "\"x\"" $
        sameEnds "xxx" `shouldBe` "x"
    it "\"xx\"" $
        sameEnds "xxxx" `shouldBe` "xx"
    it "\"java\"" $
        sameEnds "javaXYZjava" `shouldBe` "java"
    it "\"java\"" $
        sameEnds "javajava" `shouldBe` "java"
    it "\"\"" $
        sameEnds "xavaXYZjava" `shouldBe` ""
    it "\"Hello!\"" $
        sameEnds "Hello! and Hello!" `shouldBe` "Hello!"
    it "\"\"" $
        sameEnds "x" `shouldBe` ""
    it "\"\"" $
        sameEnds "" `shouldBe` ""
    it "\"\"" $
        sameEnds "abcb" `shouldBe` ""
    it "\"my\"" $
        sameEnds "mymmy" `shouldBe` "my"
