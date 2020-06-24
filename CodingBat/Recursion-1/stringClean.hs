{-From https://codingbat.com/prob/p104029
Given a string, return recursively a "cleaned" string where adjacent chars that are the
same have been reduced to a single char. So "yyzzza" yields "yza".
-}
import Test.Hspec


stringClean :: String -> String
stringClean str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"yza\"" $ stringClean "yyzzza" `shouldBe` "yza"
   it "\"abcd\"" $ stringClean "abbbcdd" `shouldBe` "abcd"
   it "\"Helo\"" $ stringClean "Hello" `shouldBe` "Helo"
   it "\"yza\"" $ stringClean "yyzzza" `shouldBe` "yza"
   it "\"abcd\"" $ stringClean "abbbcdd" `shouldBe` "abcd"
   it "\"Helo\"" $ stringClean "Hello" `shouldBe` "Helo"

