{- From https://codingbat.com/prob/p191022
Given a string, return true if the string starts with \"hi\" and false otherwise.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


startHi :: String -> Bool
startHi str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        startHi "hi there" `shouldBe` True
    it "True" $
        startHi "hi" `shouldBe` True
    it "False" $
        startHi "hello hi" `shouldBe` False
    it "False" $
        startHi "he" `shouldBe` False
    it "False" $
        startHi "h" `shouldBe` False
    it "False" $
        startHi "" `shouldBe` False
    it "False" $
        startHi "ho hi" `shouldBe` False
    it "True" $
        startHi "hi ho" `shouldBe` True
