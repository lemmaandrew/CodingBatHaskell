{- From https://codingbat.com/prob/p199216
Given a string, if the string begins with \"red\" or \"blue\" return that color string, 
otherwise return the empty string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


seeColor :: String -> String
seeColor str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"red\"" $
        seeColor "redxx" `shouldBe` "red"
    it "\"\"" $
        seeColor "xxred" `shouldBe` ""
    it "\"blue\"" $
        seeColor "blueTimes" `shouldBe` "blue"
    it "\"\"" $
        seeColor "NoColor" `shouldBe` ""
    it "\"red\"" $
        seeColor "red" `shouldBe` "red"
    it "\"\"" $
        seeColor "re" `shouldBe` ""
    it "\"\"" $
        seeColor "blu" `shouldBe` ""
    it "\"blue\"" $
        seeColor "blue" `shouldBe` "blue"
    it "\"\"" $
        seeColor "a" `shouldBe` ""
    it "\"\"" $
        seeColor "" `shouldBe` ""
    it "\"\"" $
        seeColor "xyzred" `shouldBe` ""
