{- From https://codingbat.com/prob/p151713
Return true if the given string begins with \"mix\", except the 'm' can be anything, 
so \"pix\", \"9ix\" .. all count.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


mixStart :: String -> Bool
mixStart str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        mixStart "mix snacks" `shouldBe` True
    it "True" $
        mixStart "pix snacks" `shouldBe` True
    it "False" $
        mixStart "piz snacks" `shouldBe` False
    it "True" $
        mixStart "nix" `shouldBe` True
    it "False" $
        mixStart "ni" `shouldBe` False
    it "False" $
        mixStart "n" `shouldBe` False
    it "False" $
        mixStart "" `shouldBe` False
