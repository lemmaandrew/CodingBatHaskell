{- From https://codingbat.com/prob/p103895
Given a string, return true if it ends in \"ly\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


endsLy :: String -> Bool
endsLy str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        endsLy "oddly" `shouldBe` True
    it "False" $
        endsLy "y" `shouldBe` False
    it "False" $
        endsLy "oddy" `shouldBe` False
    it "False" $
        endsLy "oddl" `shouldBe` False
    it "False" $
        endsLy "olydd" `shouldBe` False
    it "True" $
        endsLy "ly" `shouldBe` True
    it "False" $
        endsLy "" `shouldBe` False
    it "False" $
        endsLy "falsey" `shouldBe` False
    it "True" $
        endsLy "evenly" `shouldBe` True
