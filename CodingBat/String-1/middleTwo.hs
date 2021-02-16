{- From https://codingbat.com/prob/p137729
Given a string of even length, return a string made of the middle two chars, so the 
string \"string\" yields \"ri\". The string length will be at least 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


middleTwo :: String -> String
middleTwo str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ri\"" $
        middleTwo "string" `shouldBe` "ri"
    it "\"od\"" $
        middleTwo "code" `shouldBe` "od"
    it "\"ct\"" $
        middleTwo "Practice" `shouldBe` "ct"
    it "\"ab\"" $
        middleTwo "ab" `shouldBe` "ab"
    it "\"45\"" $
        middleTwo "0123456789" `shouldBe` "45"
