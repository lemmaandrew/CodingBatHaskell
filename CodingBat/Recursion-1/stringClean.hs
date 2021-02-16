{- From https://codingbat.com/prob/p104029
Given a string, return recursively a \"cleaned\" string where adjacent chars that 
are the same have been reduced to a single char. So \"yyzzza\" yields \"yza\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringClean :: String -> String
stringClean str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"yza\"" $
        stringClean "yyzzza" `shouldBe` "yza"
    it "\"abcd\"" $
        stringClean "abbbcdd" `shouldBe` "abcd"
    it "\"Helo\"" $
        stringClean "Hello" `shouldBe` "Helo"
    it "\"XabcY\"" $
        stringClean "XXabcYY" `shouldBe` "XabcY"
    it "\"12ab45\"" $
        stringClean "112ab445" `shouldBe` "12ab45"
    it "\"Helo Bokeper\"" $
        stringClean "Hello Bookkeeper" `shouldBe` "Helo Bokeper"
