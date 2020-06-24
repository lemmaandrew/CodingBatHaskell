{-From https://codingbat.com/prob/p172267
Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".
-}
import Test.Hspec


firstHalf :: String -> String
firstHalf str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"Woo\"" $ firstHalf "WooHoo" `shouldBe` "Woo"
   it "\"Hello\"" $ firstHalf "HelloThere" `shouldBe` "Hello"
   it "\"abc\"" $ firstHalf "abcdef" `shouldBe` "abc"
   it "\"Woo\"" $ firstHalf "WooHoo" `shouldBe` "Woo"
   it "\"Hello\"" $ firstHalf "HelloThere" `shouldBe` "Hello"
   it "\"abc\"" $ firstHalf "abcdef" `shouldBe` "abc"

