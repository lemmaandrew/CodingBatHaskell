{-From https://codingbat.com/prob/p186759
Given a string, return true if the first instance of "x" in the string is immediately
followed by another "x".
-}
import Test.Hspec


doubleX :: String -> Boolean
doubleX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ doubleX "axxbb" `shouldBe` true
   it "false" $ doubleX "axaxax" `shouldBe` false
   it "true" $ doubleX "xxxxx" `shouldBe` true

