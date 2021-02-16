{- From https://codingbat.com/prob/p139564
Return a version of the given string, where for every star (*) in the string the 
star and the chars immediately to its left and right are gone. So \"ab*cd\" yields \"ad\" 
and \"ab**cd\" also yields \"ad\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


starOut :: String -> String
starOut str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ad\"" $
        starOut "ab*cd" `shouldBe` "ad"
    it "\"ad\"" $
        starOut "ab**cd" `shouldBe` "ad"
    it "\"silly\"" $
        starOut "sm*eilly" `shouldBe` "silly"
    it "\"siy\"" $
        starOut "sm*eil*ly" `shouldBe` "siy"
    it "\"siy\"" $
        starOut "sm**eil*ly" `shouldBe` "siy"
    it "\"siy\"" $
        starOut "sm***eil*ly" `shouldBe` "siy"
    it "\"string\"" $
        starOut "stringy*" `shouldBe` "string"
    it "\"tringy\"" $
        starOut "*stringy" `shouldBe` "tringy"
    it "\"ty\"" $
        starOut "*str*in*gy" `shouldBe` "ty"
    it "\"abc\"" $
        starOut "abc" `shouldBe` "abc"
    it "\"c\"" $
        starOut "a*bc" `shouldBe` "c"
    it "\"ab\"" $
        starOut "ab" `shouldBe` "ab"
    it "\"\"" $
        starOut "a*b" `shouldBe` ""
    it "\"a\"" $
        starOut "a" `shouldBe` "a"
    it "\"\"" $
        starOut "a*" `shouldBe` ""
    it "\"\"" $
        starOut "*a" `shouldBe` ""
    it "\"\"" $
        starOut "*" `shouldBe` ""
    it "\"\"" $
        starOut "" `shouldBe` ""
