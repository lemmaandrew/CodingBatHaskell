{-From https://codingbat.com/prob/p196652
Given a string, return true if the first 2 chars in the string also appear at the end
of the string, such as with "edited".
-}
import Test.Hspec


frontAgain :: String -> Boolean
frontAgain str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ frontAgain "edited" `shouldBe` true
   it "false" $ frontAgain "edit" `shouldBe` false
   it "true" $ frontAgain "ed" `shouldBe` true

