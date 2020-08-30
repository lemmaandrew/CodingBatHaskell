{-From https://codingbat.com/prob/p191022
Given a string, return true if the string starts with "hi" and false otherwise.
-}
import Test.Hspec


startHi :: String -> Boolean
startHi str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ startHi "hi there" `shouldBe` true
   it "true" $ startHi "hi" `shouldBe` true
   it "false" $ startHi "hello hi" `shouldBe` false

