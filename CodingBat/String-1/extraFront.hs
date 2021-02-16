{- From https://codingbat.com/prob/p172063
Given a string, return a new string made of 3 copies of the first 2 chars of the 
original string. The string may be any length. If there are fewer than 2 chars, use whatever 
is there.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


extraFront :: String -> String
extraFront str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"HeHeHe\"" $
        extraFront "Hello" `shouldBe` "HeHeHe"
    it "\"ababab\"" $
        extraFront "ab" `shouldBe` "ababab"
    it "\"HHH\"" $
        extraFront "H" `shouldBe` "HHH"
    it "\"\"" $
        extraFront "" `shouldBe` ""
    it "\"CaCaCa\"" $
        extraFront "Candy" `shouldBe` "CaCaCa"
    it "\"CoCoCo\"" $
        extraFront "Code" `shouldBe` "CoCoCo"
