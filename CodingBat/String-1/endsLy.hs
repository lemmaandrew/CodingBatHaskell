{-From https://codingbat.com/prob/p103895
Given a string, return true if it ends in "ly".
-}
import Test.Hspec


endsLy :: String -> Boolean
endsLy str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ endsLy "oddly" `shouldBe` true
   it "false" $ endsLy "y" `shouldBe` false
   it "false" $ endsLy "oddy" `shouldBe` false

