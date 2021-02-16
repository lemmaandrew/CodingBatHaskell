{- From https://codingbat.com/prob/p111624
Return true if the string \"cat\" and \"dog\" appear the same number of times in 
the given string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


catDog :: String -> Bool
catDog str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        catDog "catdog" `shouldBe` True
    it "False" $
        catDog "catcat" `shouldBe` False
    it "True" $
        catDog "1cat1cadodog" `shouldBe` True
    it "False" $
        catDog "catxxdogxxxdog" `shouldBe` False
    it "True" $
        catDog "catxdogxdogxcat" `shouldBe` True
    it "False" $
        catDog "catxdogxdogxca" `shouldBe` False
    it "False" $
        catDog "dogdogcat" `shouldBe` False
    it "True" $
        catDog "dogogcat" `shouldBe` True
    it "False" $
        catDog "dog" `shouldBe` False
    it "False" $
        catDog "cat" `shouldBe` False
    it "True" $
        catDog "ca" `shouldBe` True
    it "True" $
        catDog "c" `shouldBe` True
    it "True" $
        catDog "" `shouldBe` True
