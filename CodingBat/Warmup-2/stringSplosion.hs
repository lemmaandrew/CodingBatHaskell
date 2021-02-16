{- From https://codingbat.com/prob/p117334
Given a non-empty string like \"Code\" return a string like \"CCoCodCode\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringSplosion :: String -> String
stringSplosion str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"CCoCodCode\"" $
        stringSplosion "Code" `shouldBe` "CCoCodCode"
    it "\"aababc\"" $
        stringSplosion "abc" `shouldBe` "aababc"
    it "\"aab\"" $
        stringSplosion "ab" `shouldBe` "aab"
    it "\"x\"" $
        stringSplosion "x" `shouldBe` "x"
    it "\"ffafadfade\"" $
        stringSplosion "fade" `shouldBe` "ffafadfade"
    it "\"TThTheTherThere\"" $
        stringSplosion "There" `shouldBe` "TThTheTherThere"
    it "\"KKiKitKittKitteKitten\"" $
        stringSplosion "Kitten" `shouldBe` "KKiKitKittKitteKitten"
    it "\"BByBye\"" $
        stringSplosion "Bye" `shouldBe` "BByBye"
    it "\"GGoGooGood\"" $
        stringSplosion "Good" `shouldBe` "GGoGooGood"
    it "\"BBaBad\"" $
        stringSplosion "Bad" `shouldBe` "BBaBad"
