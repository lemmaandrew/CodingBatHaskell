{-From https://codingbat.com/prob/p143825
Given 2 strings, return their concatenation, except omit the first char of each. The strings
will be at least length 1.
-}
import Test.Hspec


nonStart :: String -> String -> String
nonStart a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ellohere\"" $ nonStart "Hello" "There" `shouldBe` "ellohere"
   it "\"avaode\"" $ nonStart "java" "code" `shouldBe` "avaode"
   it "\"hotlava\"" $ nonStart "shotl" "java" `shouldBe` "hotlava"
   it "\"ellohere\"" $ nonStart "Hello" "There" `shouldBe` "ellohere"
   it "\"avaode\"" $ nonStart "java" "code" `shouldBe` "avaode"
   it "\"hotlava\"" $ nonStart "shotl" "java" `shouldBe` "hotlava"

