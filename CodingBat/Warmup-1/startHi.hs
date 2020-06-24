{-From https://codingbat.com/prob/p191022
Given a string, return true if the string starts with "hi" and false otherwise.
-}
import Test.Hspec


startHi :: String -> Bool
startHi str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ startHi "hithere" `shouldBe` True
   it "True" $ startHi "hi" `shouldBe` True
   it "False" $ startHi "hellohi" `shouldBe` False

