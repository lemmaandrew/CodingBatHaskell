{-From https://codingbat.com/prob/p103895
Given a string, return true if it ends in "ly".
-}
import Test.Hspec


endsLy :: String -> Bool
endsLy str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ endsLy "oddly" `shouldBe` True
   it "False" $ endsLy "y" `shouldBe` False
   it "False" $ endsLy "oddy" `shouldBe` False

