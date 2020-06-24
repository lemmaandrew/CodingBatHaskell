{-From https://codingbat.com/prob/p123384
Given a string, return a new string where the first and last chars have been exchanged.
-}
import Test.Hspec


frontBack :: String -> String
frontBack str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"eodc\"" $ frontBack "code" `shouldBe` "eodc"
   it "\"a\"" $ frontBack "a" `shouldBe` "a"
   it "\"ba\"" $ frontBack "ab" `shouldBe` "ba"

